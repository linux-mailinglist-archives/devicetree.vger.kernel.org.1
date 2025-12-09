Return-Path: <devicetree+bounces-245327-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E8E09CAF2CE
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 08:40:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3275230275F6
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 07:39:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 617AB283CA3;
	Tue,  9 Dec 2025 07:39:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XTWGrODb";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IWgM7Vq/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAC62221543
	for <devicetree@vger.kernel.org>; Tue,  9 Dec 2025 07:39:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765265952; cv=none; b=tC/BK8SFJ0iI5pdByj8KlmaAIDsG62xHYZuY+w+ZEmspntvS3guVqXzJGJD22JUJ06m/nKnNPq6UKuoCJfLgpfU5pdH6WUTQ1gJ8fc6m2JZ4mi7roiwdfph2QgR1KqOgOCF+MKrGb50F97rYhos6Zzo0AmXGsjcOtatqcEVhFko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765265952; c=relaxed/simple;
	bh=ah6wP3SZ0f93WP2kXQrQnRBuajnyB96mNLahnVyoto0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WkqoeGNuwd3n3hUfSB7xHDHUndPWKHrtUst/bJDjBTzSGLo1NpJu/F/TeAiWGOZxfrxgr19MsusrwXJa4DyeHYPKNBWhNRKiUpmlJTKKPkaI2UEMlhuBTmVNdqJSTV/9zWn4UYgSdIMv1ucfuRkvSeyn3YlawFeT37jtfQx16oc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XTWGrODb; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IWgM7Vq/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B8NY6GE2368692
	for <devicetree@vger.kernel.org>; Tue, 9 Dec 2025 07:39:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=EjJz1tRuwtN5atCq/+7pA7hs
	dVbohxKB1T3yS1TzF14=; b=XTWGrODbCINES9+1Dp2U+4EybrfIMuIXZZhLpuu3
	GsY/aXuTdbczirkcr6pD40Xvg+MMRwDXqjd9vFHiTwr1wC5iZxXkCF7Ay44qNre6
	Debca2OLvZ1Zlz+XwfPYQfdqo7LeLHDMz6FY5G3lcFBNJJrJZdpNjofFT4QmYKZH
	SDoRV6eDOeqBXmGl8CA8U2Whni936wNn1wBtgMu8sY1xuCWl9QNInM21C7j0op54
	d5fNweaWh5keN95q3sA48QCAtNLx0ZUDs7zxzD1Dv0FDtpaCs35aCh8X/S2EEfj6
	agBheqENWOLiqYo0OaIJczaazd3+6ArIKH+udpqWgcpX8g==
Received: from mail-vk1-f199.google.com (mail-vk1-f199.google.com [209.85.221.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ax4fqhu0d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 07:39:09 +0000 (GMT)
Received: by mail-vk1-f199.google.com with SMTP id 71dfb90a1353d-55962ec6308so8027199e0c.0
        for <devicetree@vger.kernel.org>; Mon, 08 Dec 2025 23:39:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765265949; x=1765870749; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=EjJz1tRuwtN5atCq/+7pA7hsdVbohxKB1T3yS1TzF14=;
        b=IWgM7Vq/gm+ubE66mbI9X/jlWLxJOpreNUfUUm1ri+g7ljLu5CmEP+qDKGbnqzkE2/
         p7uYEM8TpdUVEnmjpbAND35B9AFk3qOW2lWvDrTz5EvJiZEl43qQBwx+o0gTIwOgPlOt
         tAgHcFo1+B3Z06ywbZNZQezD8WPeeiPJ9IcW9am3ACZrCUyXdVyst/RLhLAy4JAvmTbS
         3+dIKpgS0MGWZKQGAHdEKEFhCZgiSUmBPgqpb50MQJ06kBBwvKwsioDQTwb6A8rnH1td
         QydZyx24OeeVt8mrnsZCmox6SpZoyFVl17l0hnUOglITHSf5nOjvcGYt/Fjc7HO81FmY
         5NTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765265949; x=1765870749;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EjJz1tRuwtN5atCq/+7pA7hsdVbohxKB1T3yS1TzF14=;
        b=L09ttgWvxVD3HnL8bOXizcEeJNGZB8HSiAg5VNBROCbWe5yRhLqqrjMKV01DsEBPFk
         fktrJhonLvs0nDm2lppx+ZQ01KRPmYDjlRinuids7Vw5TMLsSFkc0utJFcHm2WALK0Sv
         tYhurJXLKYwWy+4AN3K0SN4qIRC9FDxoTul3i2AVud+3Kx7IBTtmMdzB+QUzhSADyz8d
         KQGUn2QCOPd7s1/IDIkFRxs2F/9RB5zjU6NfVOAObvsh1ViL8stoZS3ZFhncG6OQhZEw
         Y2euN/StiaCdN55ITxocuAxPTJG7/ZkqptqkaLdpkiphttHBMNmitHyVbsOIhpsR0HDv
         tIzQ==
X-Forwarded-Encrypted: i=1; AJvYcCWfGAJos25b6oUSfZY8Th7Wj1liOPB6l/c+Au8u9SvhZb767gCodnxbJIEeFE/HD4vP2m1dQfDfuHB7@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/nrCoEpWC4M9QjNx+wUtznVFa+ml83ldRJLlhT0tUkzRik0Pu
	3AZgbJ31546fSLldb6yhlcwrCHTwNdoN3pvjxyoxmKrf0CgS1SjBYcJAD+vanDIRXH8t7n1Bpo2
	L8403v3SZ2Eau3NyxLn+ncdqnKSnZ1504xjWrSNAo/1Dhvs919sKQubBknZ5LLhBB
X-Gm-Gg: ASbGncs+o68GRq43gz1hWbt5Qq3zeD/5iGa7EW0xUDmu7puc8tJwcFS1kxdKmOy5q4F
	wl7N3uGaSHGBXgLLvMuYpBTRkA7xx1tOqa9lk8Thoj+OJedt8oKsAjI/ACVsVxKGnp/zro8Ml+b
	T3xlx+ho5lysRAT8/BjMEB2SSDP5Fd+Q6fJckdluQWOVE8sR1YBCOD8JVh1u24hS/0K6pJ6NLK/
	/T42Ysj30Rx6fvYSnaSsiKsYG/cFJ9GXeBL8hGa14MdUeuWqJfOLEdFsBw8gt4613zGNFtrOMlZ
	Z8XgINNGxKX1shIqXFl2BidKw5NjnSLfdSilLO4EHI2Qxgnu1PdNPKoIjh8qRm/NkrdW8y0zwRM
	T0VhKCV7AW6SOnlyIdLHe/cf5RxlSV1O8ThcUgNAz+5e0TIW/+/dvxY0JOXj4vJzURttfpn++yD
	eTDey48TKqz0XmB6iVlh2lQlE=
X-Received: by 2002:a05:6122:4f93:b0:55b:305b:51b7 with SMTP id 71dfb90a1353d-55e84743ae5mr2931641e0c.20.1765265949064;
        Mon, 08 Dec 2025 23:39:09 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFyA+UzcZItQsnVtRuB0AxpSrAsjx3CIvnk3VhGYHYn7aFiUrngUEJCmwR5ZKqOshFA/bZhnA==
X-Received: by 2002:a05:6122:4f93:b0:55b:305b:51b7 with SMTP id 71dfb90a1353d-55e84743ae5mr2931625e0c.20.1765265948473;
        Mon, 08 Dec 2025 23:39:08 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37e6fe6bb67sm44053611fa.6.2025.12.08.23.39.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Dec 2025 23:39:07 -0800 (PST)
Date: Tue, 9 Dec 2025 09:39:05 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Harshal Dev <harshal.dev@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Val Packett <val@packett.cool>,
        Stephan Gerhold <stephan.gerhold@linaro.org>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Udit Tiwari <quic_utiwari@quicinc.com>,
        Neeraj Soni <quic_neersoni@quicinc.com>
Subject: Re: [PATCH v4] arm64: dts: qcom: x1e80100: Add crypto engine
Message-ID: <vvbtsf4qw7c7ymshxjdxlprtw3s3fctldvpw6zw4h5ny43wmju@ln7ecfh7y34j>
References: <20251208-crypto_dt_node_x1e80100-v4-1-f5d03bb2c501@oss.qualcomm.com>
 <2cf32f08-99e9-48c2-ad0f-2e579d50f7a9@oss.qualcomm.com>
 <e51d4fd8-80bf-4774-ba93-66d9a6761654@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e51d4fd8-80bf-4774-ba93-66d9a6761654@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA5MDA1NiBTYWx0ZWRfX+4O3tdZlexyz
 rEMp1eeWppAtBlT/JT4hi/ZNLuWi8Zm7HtMvMs0X9jDCrVg0jeMBWgT6Sllmsa0JlO+gzdf3uS9
 89mfwY31yyspzUkuTKt2e8LNhxR5TJ2NwkN0yy9wUviu0YDdlJ7iB138tSHX4lC1z/9jWPrhQc2
 oJMmNSCxeHKF1VOaCxcVTRGmJmKi81ZAXGLqkQa+fFjBWp9wUfBB1jBi/O255kHwclQ4/BNBXNn
 7VoQlHDn7gzXp7mav7VRoz0xXk6UatKeYbcKJshRq3lp89DVt7I2ORDdDoyez+DqmsbktAOqTRV
 c7+rtPX6Tp7ejcZ8UCZmyiXZqns3p/k1VmPL44wma1auiVGiFPSqp+HMA5yz12vPeYfoKhC+M9+
 Exh0CRKq5YkMyTFRX7QDSouUVXzejg==
X-Proofpoint-ORIG-GUID: KHn33QchH808rY5c4zQ_39bxaLoEFl6J
X-Authority-Analysis: v=2.4 cv=TPFIilla c=1 sm=1 tr=0 ts=6937d21d cx=c_pps
 a=+D9SDfe9YZWTjADjLiQY5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=MGR1qwUY5ZYSrk9h1QEA:9
 a=CjuIK1q_8ugA:10 a=vmgOmaN-Xu0dpDh8OwbV:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: KHn33QchH808rY5c4zQ_39bxaLoEFl6J
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-09_01,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 adultscore=0 spamscore=0 malwarescore=0
 bulkscore=0 priorityscore=1501 clxscore=1015 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512090056

On Tue, Dec 09, 2025 at 12:57:29PM +0530, Harshal Dev wrote:
> Hi,
> 
> On 12/8/2025 9:26 PM, Konrad Dybcio wrote:
> > On 12/8/25 1:32 PM, Harshal Dev wrote:
> >> On X Elite, there is a crypto engine IP block similar to ones found on
> >> SM8x50 platforms.
> >>
> >> Describe the crypto engine and its BAM.
> >>
> >> Signed-off-by: Harshal Dev <harshal.dev@oss.qualcomm.com>
> >> ---
> >> The dt-binding schema update for the x1e80100 compatible is here
> >> (already merged):
> >>     
> >> https://lore.kernel.org/all/20250213-dt-bindings-qcom-qce-x1e80100-v1-1-d17ef73a1c12@linaro.org/
> >> ---
> > 
> > 
> >> +		cryptobam: dma-controller@1dc4000 {
> >> +			compatible = "qcom,bam-v1.7.4", "qcom,bam-v1.7.0";
> >> +			reg = <0x0 0x01dc4000 0x0 0x28000>;
> >> +			interrupts = <GIC_SPI 272 IRQ_TYPE_LEVEL_HIGH>;
> >> +			#dma-cells = <1>;
> >> +			iommus = <&apps_smmu 0x480 0x0>,
> >> +				 <&apps_smmu 0x481 0x0>;
> >> +			qcom,ee = <0>;
> >> +			qcom,controlled-remotely;
> >> +			num-channels = <20>;
> >> +			qcom,num-ees = <4>;
> >> +		};
> >> +
> >> +		crypto: crypto@1dfa000 {
> >> +			compatible = "qcom,x1e80100-qce", "qcom,sm8150-qce", "qcom,qce";
> >> +			reg = <0x0 0x01dfa000 0x0 0x6000>;
> >> +			dmas = <&cryptobam 4>, <&cryptobam 5>;
> >> +			dma-names = "rx",
> >> +				    "tx";
> >> +			iommus = <&apps_smmu 0x480 0x0>,
> >> +				 <&apps_smmu 0x481 0x0>;
> >> +			interconnects = <&aggre2_noc MASTER_CRYPTO QCOM_ICC_TAG_ALWAYS
> >> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
> >> +			interconnect-names = "memory";
> >> +		};
> >> +
> >>  		cnoc_main: interconnect@1500000 {
> > 
> > Right as I hit enter for the rb message, I noticed the nodes you're
> > adding are not sorted - please sort them wrt the unit address (@foo)
> > and retain my tag then
> >
> 
> Not sure if I understand you Konrad.. I believe the nodes are already sorted
> since address (crypto) @1dfa000 > address (cryptobam) @1dc4000? Do let me know what
> I'm missing.

0x01dfa000 > 0x1500000, so no, your nodes are not properly sorted.

> 
> Thanks,
> Harshal
>  
> > Konrad
> 

-- 
With best wishes
Dmitry

