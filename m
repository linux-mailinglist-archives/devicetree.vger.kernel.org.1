Return-Path: <devicetree+bounces-182023-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A994AC9C8D
	for <lists+devicetree@lfdr.de>; Sat, 31 May 2025 21:26:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 093F017DC05
	for <lists+devicetree@lfdr.de>; Sat, 31 May 2025 19:26:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2C331A238A;
	Sat, 31 May 2025 19:26:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KkEgYvgS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B88F199FAF
	for <devicetree@vger.kernel.org>; Sat, 31 May 2025 19:26:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748719597; cv=none; b=TRVtC4GbGYmNiRWoKgyA86h8TIBZW/mZr1HLeQKEphvlGxjs/IvsdhxY7qoHwyzitbI1HL3TFtme/6d7dS9gOJfv8vQwCAaqxwt8+IiCl0np6RyC8oJR2Ui2qN45N2pfLi3nisoFk4l7KoiWexhjTtODH1mR4/OcgRKTUYzYa9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748719597; c=relaxed/simple;
	bh=C6PuGWGN9MJXkw2ORL2a11VSngX8qZR5eK+WKh08IqA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iYTyuTi0ftW3ilLDbgNGwX7Kb58bRzZABKCX7oPxRu1hGnKS0bJ9HydFvx4916vhLRdeIpC8CtWiMKgkGasWZiKs3wDgEbSoBixD45iKCvxiLCTKk0vqshEVmVySZK8ev6y1WPIjZR1GM5Y4suxr5gHAncpj9CpZyrW/OMVxMPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KkEgYvgS; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54VFAQsZ016238
	for <devicetree@vger.kernel.org>; Sat, 31 May 2025 19:26:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CrU6uwD3Ib8Ilhn29fx2EmcIB6JSJ2gX+zA3T2fzlk4=; b=KkEgYvgSW1tfljJG
	OgLzcdEiLuGCiMiRdn5Hy5LiNRJpBwT4QYXmH8roanWxxcWpV2k391goKEDBn5zC
	AVHl2yAWt6ka1py0J3gDwBbBu5vz3rBtnml/YCigCxpV69EObug2Xn3WY11AdgBP
	B3Vq8iNJc0v+K6id1TU8t2sk2y5iY7yB4c6FmdueNn/F9Y/APY/EI59DhC0faVvc
	GHqGkH3l2CJ8gQaMFK6vcu/0xYgp72WnLaTxbmiVSP8pQZrMpukHOIlYRcbjapF0
	2mN/yJYCSswuzuKKa5v6Uj95Wfg5aEgC0yE/5XG2YWCVnGkX5zk7vLmdzzbs36de
	grrIow==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46ytkr1937-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 31 May 2025 19:26:35 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7d0976a24ceso74348085a.2
        for <devicetree@vger.kernel.org>; Sat, 31 May 2025 12:26:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748719594; x=1749324394;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CrU6uwD3Ib8Ilhn29fx2EmcIB6JSJ2gX+zA3T2fzlk4=;
        b=ckLyyDmXVPmCmd3VauQpKWNMAnesONYW7hte4E/da52ehovB6ZhhEtCGvLazLk0Nrq
         2x+1C1yAGapwPD2JWXD0TxhrOMxSQeihVZLlMV+A6WIlrLaOxqdpATOwRuXoI91aOUVj
         KbPq804p9yKGJlm8okigdoMlPnMHyvgwuj1AakRzpx0019hizxae7XR0ESio3k0XOXU5
         FdjG3EOi7ukHhc1uNK8GqKncJaFOKkTVmcXtTTFjOFDHH8s42nITA6Xykj+cb/ghYctF
         CmVc+Xb4zgsQkYM2JSecjav5Jc1xbwy+bolmVafwnoMs9AE5Df/Ei13kuV2YCwuhNGkL
         YmJA==
X-Forwarded-Encrypted: i=1; AJvYcCXjSggBjMoM7ilUPwbWyJSvHO1n22dSn9BUIzKQ2eI4ksA2WNQ6ozOLhqXCTCU9x/edQyCHPTOylwSQ@vger.kernel.org
X-Gm-Message-State: AOJu0YwYIui61/nSlnRUoachF+O/xrctsYR1pcbiKPYwP9j17hwLYA2e
	nt207Xg9DTGAerMBvXnwBggyjC/HrkxKlyPCBVREZ0i0q+DqpHIVuoXM7pc5eCWFW48wad7iVeG
	oNHxGLOCffGfkJnnJ4natiKBYauAcCF6dbZGONR9q2Oc3L6TB6CaXXy6nte7OTpzH
X-Gm-Gg: ASbGnctW3gQxycbAlTsoo8BOq2f8+jabTy3R+Arb/ebxqo+f9oNiERZk1FWF2jX06rI
	pztNYRyka2QKexESVDEnsQMypQMN7zfL7HhhZN3G3RJchiQTaXRYkJF1fVJ2eO6Rn0GwD9l6uJV
	4Iu4k2ymVQ9yw8y3d8F9xW4bwxOzOKZsIqg3Q0ppWuT6OEMoriZX+Tvyv4CAZN9IGnqjKshf5dG
	dy5YLRyOcGWNEcabOUey7uJHf71Pp/LTPUjOcYbjNJCINHH6SXS1X3eYQqIzfKtzLSh1dvsJtv8
	9M/nT+0uZHY5yKYsiRdYb31mO66uPuLb7ZzITw26HLiVPfbfMgVUEXl14dZoQsAJSA==
X-Received: by 2002:a05:620a:394c:b0:7cd:14b:554b with SMTP id af79cd13be357-7d0a3df914bmr403841885a.10.1748719593864;
        Sat, 31 May 2025 12:26:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGgWeFsZuQVBnuevfLlI3W+HHd3FvIh2wDCmEbb3BOsXmzJcbTj7lwjNVLtEsvsVJTLk0yQ6Q==
X-Received: by 2002:a05:620a:394c:b0:7cd:14b:554b with SMTP id af79cd13be357-7d0a3df914bmr403840785a.10.1748719593528;
        Sat, 31 May 2025 12:26:33 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6058563eebbsm2805063a12.67.2025.05.31.12.26.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 May 2025 12:26:32 -0700 (PDT)
Message-ID: <03d76a6a-f027-4529-a917-2c5f92530de6@oss.qualcomm.com>
Date: Sat, 31 May 2025 21:26:30 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/5] arm64: dts: qcom: x1e80100: add bus topology for
 PCIe domain 3
To: Wenbin Yao <quic_wenbyao@quicinc.com>, catalin.marinas@arm.com,
        will@kernel.org, linux-arm-kernel@lists.infradead.org,
        andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        vkoul@kernel.org, kishon@kernel.org, sfr@canb.auug.org.au,
        linux-phy@lists.infradead.org
Cc: krishna.chundru@oss.qualcomm.com, quic_vbadigan@quicinc.com,
        quic_mrana@quicinc.com, quic_cang@quicinc.com, quic_qianyu@quicinc.com
References: <20250508081514.3227956-1-quic_wenbyao@quicinc.com>
 <20250508081514.3227956-3-quic_wenbyao@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250508081514.3227956-3-quic_wenbyao@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: QS4e35Ga7wZyaHj0ZuqqpEREcTNFOtpG
X-Authority-Analysis: v=2.4 cv=OMMn3TaB c=1 sm=1 tr=0 ts=683b57eb cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=ICgkrN6sfqZrQ0pjF_MA:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: QS4e35Ga7wZyaHj0ZuqqpEREcTNFOtpG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTMxMDE3OCBTYWx0ZWRfX6MqAh6F/7D5E
 i+zQGeUPNPGEYl81onPJ9HY7eObVADiLRB1SrvO5yEyTtYWWAOMG2fzAPBQQhihYDTqIn8BY4Wf
 2SSw2vmhL5EpSNjXoGRMHTiP3uPfMU+oT1z6kObySykCy0ka3todg9nBaIA++ZucDCrHeH1XbYs
 wyMOO9VnzbPcBOkKvOcxu7rSe9ytjPwA3HeCJ266fsgn/DWDlKXaLnNTfXJLJ+LSSJwWfYpW+Ww
 KfRu1BvFcZHjHmz6cNrVwbEz7yGF2OawmRuCO7iNqEgZwP3x+VB74ACJj16av8DMZyHE2ZHc1ks
 ns9hjBFhoKybHPR7uiAX36RDgb70o+4eT1PUhs1YVui0Gj10GussKTVNrDljYn4PTdSEAAIVS6D
 iJhjRAhELC6qOu+Vll6SyTi/GM9rGZw1exPmjYjf9elY8z0m937yx44lv23H9K0GjO9URI9j
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-31_09,2025-05-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 lowpriorityscore=0 suspectscore=0 mlxlogscore=999
 malwarescore=0 adultscore=0 clxscore=1015 priorityscore=1501 mlxscore=0
 bulkscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505310178

On 5/8/25 10:15 AM, Wenbin Yao wrote:
> From: Qiang Yu <quic_qianyu@quicinc.com>
> 
> Add pcie3port node to represent the PCIe bridge of PCIe3 so that PCI slot
> voltage rails can be described under this node in the board's dts.
> 
> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
> Signed-off-by: Wenbin Yao <quic_wenbyao@quicinc.com>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/x1e80100.dtsi | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> index 46b79fce9..430f9d567 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> @@ -3287,6 +3287,17 @@ opp-128000000 {
>  					opp-peak-kBps = <15753000 1>;
>  				};
>  			};
> +
> +			pcie3port: pcie@0 {
> +				device_type = "pci";
> +				compatible = "pciclass,0604";
> +				reg = <0x0 0x0 0x0 0x0 0x0>;
> +				bus-range = <0x01 0xff>;
> +
> +				#address-cells = <3>;
> +				#size-cells = <2>;
> +				ranges;

If you end up setting a v(n+1), please rename the label to 'pcie3_port'

Konrad

