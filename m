Return-Path: <devicetree+bounces-261391-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YIoUKWWwfWnZTAIAu9opvQ
	(envelope-from <devicetree+bounces-261391-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 08:33:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A99AC1146
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 08:33:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9DAAD300CC1B
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 07:33:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A20431ED7B;
	Sat, 31 Jan 2026 07:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WzLo0yDq";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BwqZpZrD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0066930CD89
	for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 07:33:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769844834; cv=none; b=hrJ/HgfoespPaLC58u4go0o/JqFGouIWBsOKLwh1iY1WSmAGOu9U78K8WbuWPUzlPv0AqMIBqg0fqjeNo5ZSno6AuqeybK8jAFt9oUWNztyjSbF5M8PE3nAx5qXPnHw0ctdEfSvuYYk/WXJza8QNeNTy1DPwJRKbZX/a7jDC3KQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769844834; c=relaxed/simple;
	bh=A4J0EZts1bwjvfzamlszNc5VpBQG2B+2Vn/lLJza/r0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DNaNBG2/Yn20xnumbRvhwmao4FMME2tUgFR0oOitV2kxVPzuZmHt1LZSHzCDPRBbjsgEDbyyDngrS4/yrI8xpSU0OIYt+lytncrBvC0mvhbgeGmAxq44AT7Jem+bIqNzESz60lioDzdds5AqZQTyi5hMu6TMPYHUmzWaCwjCwjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WzLo0yDq; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BwqZpZrD; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60V4blhg1061502
	for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 07:33:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=7amPJSwfFJ95mZl07vLQ2mt2
	3xBnvo4B+KI75ZYl6To=; b=WzLo0yDqS8K5lWWbqx0OoLz0BRZ2xZeeA0gfvLyd
	QbF21/682SgtOROGsXbNnJf4YaevGmcJzya1q9NxhMmE3cM9eBgXlUNseYtmJI23
	ioCUd8AwV55drxCBOh8zN2JcAgsji/hadZ2wuTjMSpGCPnzT7qDSx/MDn/+llugG
	LuKEo9HbhOO2/udbdyaLgyDpkEbZ3opDsfYbRmE4K4qcFA9Ufr4tHTEBCjDsU/he
	F3WBa0bfoXtHquqgI2G724Q3b1kt0FaZ+Y2zth8/FmCzvUl0D1/6ZSZNMpPvjf18
	8o9nvyo2SuR3k56sqRNjz+BAIoiCDLQle/XBqTzJYjL1lg==
Received: from mail-ua1-f72.google.com (mail-ua1-f72.google.com [209.85.222.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c1avngc4j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 07:33:51 +0000 (GMT)
Received: by mail-ua1-f72.google.com with SMTP id a1e0cc1a2514c-9483c03078cso8843204241.2
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 23:33:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769844831; x=1770449631; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7amPJSwfFJ95mZl07vLQ2mt23xBnvo4B+KI75ZYl6To=;
        b=BwqZpZrDKInPjc5amYUUApZ5s2sw6JVJTqcbKxuP2VB0tewXN4cGWY4fOXTfbsdsh2
         6zFczUH8akqX/W6Gp/MVo2RQK/RQxWfXDyr3U/XBBitMLwtaCE7qTz1ESOfj240jtleF
         HjugPaVkhs+zkE7St7Bp7T+C1h8MSl9r6uRVDEAT3+Ibq9w8cjCRpGMTV3QadOPRphQY
         fNyoR/b/pbYJuuqVLicKfFn79BQoiR7OIsxz3rWPO0ukPg2eaWtxc9fMBG4bXdYIYaqB
         kHVdXRnhTEFAZEf+SKyBHj5r8QkUQcbCXE86DGTZ6OaGsIzO/RZ5BvE+xCZOVd7UqKsr
         IVfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769844831; x=1770449631;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7amPJSwfFJ95mZl07vLQ2mt23xBnvo4B+KI75ZYl6To=;
        b=iqErIvCtzyTqiuYAPwnMGA/j5+C9Q3/yRBNCot9pM4gp8wtKYunyI4nQBt0iPA5ZGY
         xXbSD4fOMFHVK9bHaCEkD/+EFMLOt88WpUMwZ279IlbLSPaI0P++/sG2+MHZZewskKc0
         YJRBcHQ9veKEy9MinfIBF7QbcXzPdVWOVOnACg0ZM+w2TgHbEy5lIQZBcvSfXfE2vmuL
         iWAITkyPBv/hE8Q7OGp5LeNUYJAyavjc4CGXfgzLPI9687F0VeVDgMDtOME16JJke/1w
         wRUWikzW4XqNbxuknIGhKaIHT/NGx79/MWmzlCLurb9VaCv0XykWdePeoZ7AaVMMwTxH
         LauQ==
X-Forwarded-Encrypted: i=1; AJvYcCXBUhzR+i/CgvNWOjUh6NTjFlvq39x9JUrkIRSRJwVjGmJ0IaW1PUBRnKpzMOObSKRtWkpkdTVA4fOR@vger.kernel.org
X-Gm-Message-State: AOJu0YzYkKL/JQwCuNyTzGE1yr8EUJyIkMbLBIhAtSwjRiS+wY0jgNdm
	QcfWQm6dbKO6iYk4e3cl9ZuGN6b1S6UQWv63dSfn6FfRm75sgeMP3tye2eC9zJTg0ia2SakYynF
	UkPghKUs7rYSWoyUqzRfgmUBXhdp6uoMIxG0GHNhZkMMzLpWdXHKI5nnP8p746qvb
X-Gm-Gg: AZuq6aK+LiOqsrhKJa4S2c8fsHZJjuiTzuYtjeb/rzKjNFS7bisMmzeWs0CTLl+mVbh
	AMEBkdI2JhTptdpqo6dRrpszE6ZAT5SYZ2IDWE21F+OPwWPAegI5PzmGVyuw7sizt7bFwmTj31i
	nuXBzO1O68TQly5NaKOZIjWKwZHPQkNHvTfMiCeUTnegGYYaEuzCBW+1JqoY/G7kC6P/4Sv5qME
	vdFd4NLScMlZ4L/x1gsUijyLke0JvGpQ8Zu6ewjIgjgQJvX5ZdXbC8pvY4kbC0hJsJEH8REFdJm
	VdpZB+7rF8bWDNkL2qzQghceo+fzAbufvBzTGNXNTB2RDUFwSg37xgHvrm/83FHM5QgKxV3UDU+
	wtOZ+LWDpAfyMZNT1GWdgUylaDucxt65+QIRsqDcI1/QxNHqII3b1Zgl8DUgJS1qwiRkne8Qzrx
	uLlaLWdjdPzxew4JVbHzTcdrc=
X-Received: by 2002:a05:6102:c4b:b0:5dd:c3ec:b75 with SMTP id ada2fe7eead31-5f8e26341f5mr1847503137.29.1769844831217;
        Fri, 30 Jan 2026 23:33:51 -0800 (PST)
X-Received: by 2002:a05:6102:c4b:b0:5dd:c3ec:b75 with SMTP id ada2fe7eead31-5f8e26341f5mr1847485137.29.1769844830828;
        Fri, 30 Jan 2026 23:33:50 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e074bbf76sm2216961e87.87.2026.01.30.23.33.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jan 2026 23:33:50 -0800 (PST)
Date: Sat, 31 Jan 2026 09:33:48 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>
Cc: Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bjorn Andersson <andersson@kernel.org>,
        David Heidelberg <david@ixit.cz>, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Johan Hovold <johan+linaro@kernel.org>
Subject: Re: [PATCH v3 7/7] arm64: dts: qcom: sm8350-hdk: enable Venus core
Message-ID: <c5ry2e5whpnoiqvcwrfxf2betgwmw7kmtcuqnk6emk3zaf53c2@h7hmzwv4lyc4>
References: <20260125-iris-sc8280xp-v3-0-d21861a9ea33@oss.qualcomm.com>
 <20260125-iris-sc8280xp-v3-7-d21861a9ea33@oss.qualcomm.com>
 <abb1429e-6251-4827-f0e6-d4a6e4d9a43e@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <abb1429e-6251-4827-f0e6-d4a6e4d9a43e@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: 4RbjtDzPEQI8KIGP54ZiVW-t24QwdTZ8
X-Authority-Analysis: v=2.4 cv=bPMb4f+Z c=1 sm=1 tr=0 ts=697db05f cx=c_pps
 a=ULNsgckmlI/WJG3HAyAuOQ==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=5okSEyyqmTaM0kh53ZAA:9 a=CjuIK1q_8ugA:10
 a=1WsBpfsz9X-RYQiigVTh:22
X-Proofpoint-GUID: 4RbjtDzPEQI8KIGP54ZiVW-t24QwdTZ8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTMxMDA2MSBTYWx0ZWRfX++yZ5eomRi8u
 bWXlVzepSUbluemBFUeqD0HOolzrbMTzcTGJA7ZOp0Pbkbatsib9nndNl8QEq1QcTQFHLp18x2G
 dLcWpahcN7XZutq3e2vUvDzWSZbmfgK9BjuaYDXNbweflRzpuLYVf2b9l6LTTatFwhaRjiw+bUM
 3qNFf3cB6FxZacjIL6OEOTMwc0PtaHBBPn3jEXmpEc8stMF/yv6eGYQB+ObAt1YWTFhWOfnFlqW
 IcxWCqb563HAtU30P295kGIWE0ppYMMuCc5ZtzXvaFc1JhC2YLyCG26El+IMCpLAiMGQ10tJloK
 n6Kvdh4thomkGWELxxUUX90c35w9XSoqm5JyAkv9+llHcAwCLExmPIhbboQ+JUESc/HnCR8BNbP
 hVybH3f5RaxvcPH7I6Kh1vXuxFEor2G9rHXRM63J053slG5yQO1RDs9Lemze6Hr81PzkKYyQmIH
 4CivM1HAVlJOs3PjU3g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-30_04,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 malwarescore=0 suspectscore=0 bulkscore=0
 phishscore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601310061
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261391-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,linaro];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 0A99AC1146
X-Rspamd-Action: no action

On Fri, Jan 30, 2026 at 06:37:35PM +0530, Dikshita Agarwal wrote:
> 
> 
> On 1/25/2026 9:03 PM, Dmitry Baryshkov wrote:
> > Enable video en/decoder on the SM8350 HDK board. There is no need to
> > specify the firmware as the driver will use the default one, provided by
> > the linux-firmware.
> > 
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > ---
> >  arch/arm64/boot/dts/qcom/sm8350-hdk.dts | 4 ++++
> >  1 file changed, 4 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/sm8350-hdk.dts b/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
> > index 5f975d009465..79f024fd47f9 100644
> > --- a/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
> > +++ b/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
> > @@ -894,6 +894,10 @@ &usb_2_qmpphy {
> >  	vdda-pll-supply = <&vreg_l5b_0p88>;
> >  };
> >  
> > +&venus {
> > +	status = "okay";
> > +};
> 
> This should be enabled only after proper testing on the SoC.

Ack, I will mark this patch as [DNM] / [RFT].

> 
> Thanks,
> Dikshita
> 
> > +
> >  /* PINCTRL - additions to nodes defined in sm8350.dtsi */
> >  
> >  &tlmm {
> > 

-- 
With best wishes
Dmitry

