Return-Path: <devicetree+bounces-277173-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GPuLAaWQumnSXgIAu9opvQ
	(envelope-from <devicetree+bounces-277173-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 12:46:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 350392BB087
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 12:46:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1463C300E5C3
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 11:46:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 012173BED2E;
	Wed, 18 Mar 2026 11:46:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lVfmqAjy";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UzyRxJwl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F6A03A2579
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 11:46:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773834401; cv=none; b=kNsjY+1hWX7PeagoC5Bi23y3P6hBzRK3SB5Vx9WswGQdE+sr3tg/FS6pHuPm2xymRa04aE6jxu2FprGmmnv7B+oQ0DiiQMbLNdRRQi53yc6GjJ8Q5bCeEJ7hfsH9ilQCOg5tbyEejUVygz6Q7ffbkLLU/2APgAqSvlqoG9zLxuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773834401; c=relaxed/simple;
	bh=C4VMR2ZS2kCbi4/xv6c6uP3I7B2nHwSrgd3D/xwi8Kw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lWZWjmryjVKUqiK0mZ+EZJOtShPZSd6fsXax5oAAtNQr+oF0pT3a+RIlz1lxlqD/hovShE+zKuT399y4X90cd+EiEWUfPXCx2hL4/7kdff8F2/d14RSosL+18yy0UvAhUgh15PiSl0pDvt0V04TQzvh0zqvqTrt7lf1wRuRnMJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lVfmqAjy; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=UzyRxJwl; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62IBhFxZ2878157
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 11:46:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XfkIvEf2S9KYaduDgSIvZHP++vk152IwD0k/as2H3Y8=; b=lVfmqAjydeF1JZQC
	49LGem4DUP7aBKBo7sG+rT/z0x+J5M3wH4GDXXso5CUtdDVu7/uMDOGQlCLKWEQd
	ks0pHEW4xIKCBK2l+0GimuDSSkh/OQWJbBEA3kehTXxAOmau0eql7BlPIr9DymZt
	Vc6c0YoO+SF/nCCiem/9RRaiBaDEFKH40u4cJbYT6WzF6VwfGmL/na3EYRIJ3Uhn
	UAaUb0ETNw/3l59GFlAcD8XXfaWnDBKWNyuY0jxi2xj3mY2DXDPkl7dLrbNfmCCM
	EI+C71NAwid7x/Nb94f7sRJG5oYplKLs+nrd9RgImOHtXeJ+L6tpMTsK5CjjfhHB
	HUz8ZA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cypwr1aev-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 11:46:39 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-5091eadc373so49370231cf.2
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 04:46:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773834398; x=1774439198; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XfkIvEf2S9KYaduDgSIvZHP++vk152IwD0k/as2H3Y8=;
        b=UzyRxJwlTFUwzi9xBEk0LLaLVk6E5meLZ/DMbkpE47t/fZs/JF5+XygPIpG42X5UD6
         mKebmcSOOYLLKobcYVacsz+O1JAZvrmeHyUx803+HXxd/AqoFj7dXUIPs44/gugIdx8v
         h1YmVAFIFNAFJUGF/aNSSSXTHeckXHr3TBIHXd4BxyDlcOy/HkWg5Et9IR9fpMlxFIJj
         uANuMzI03B5Xilfc34wBE7MH+rH1RvaMJ3XVEyrQ4fyYmYzHZcqXHoRWtmVn4L0WxXa3
         XAkgKnSekQBkQSbNHBwL2FlTR/HfZnXJSQBXlPFjRXEBxGuGhB/iieNYaOSvCeoWTn4/
         C7sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773834398; x=1774439198;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XfkIvEf2S9KYaduDgSIvZHP++vk152IwD0k/as2H3Y8=;
        b=odsXbqSo7MLJue746nOjYQ5TLIvK90mcHbDuq6m6Oqgy6qkzLtuGe6jqW3VXfsIL/L
         lEokJycaPJE8aaTfbP4xYiqb2KQbufEOg4oHIi6PqzeDZ4pi9SmqNP9T4PK4kPnOKELh
         p1dtW6CKpf/7x6b+oVLIlcFHagmPg9qsWGibnwhgU/2w6BM2+UqbjYHdbmp7dqB3Dlcc
         5gMOfk1n5YbSv6BLYps7WdzvjtDRPGBUD2BLiFaTn9Z797fgsm2Ek81vN18dE45e6xR7
         Fu/hxfuZ0uml0xb844wNGN/HKhfku6IPbzQFr6GwLJcFCUeqdTYDGGWcUX1bL16SPGnx
         suyg==
X-Forwarded-Encrypted: i=1; AJvYcCV7Gx/Cn94QoOUaYGB3+S3rD8MvU7UkhFiwtaBN8V0nk739eB2dGbsSG0iDvHUP6yd9q+gh8FciECVc@vger.kernel.org
X-Gm-Message-State: AOJu0YwhDTNx4ArTnvarS+NLpgYYAbijiKUaaTOPQC4rN4z/+0IxAS6/
	QPXPByVELI4v7+4Kx0REUmXtYp0RD6kr6rJno91O7lwC95frDvWfBc9nC5BfTOr54wpaQpv451q
	J+w2n7KhUd9LKvvLUn2oZsQcUIZeC4P4PADo6pm6CL5gWU7Ghfk+P0Lqc1cnlruqO
X-Gm-Gg: ATEYQzz/gH3mnxN2aO5ZONARmF03j2lyCd9v9SDPsas1pIimUNF4cyFoMKR3BII+BnX
	5Int0JgvrixC6iX34u+u+U9y6ql2W4Vj0Y3PFCTj7O5awrC84pbTPoYo65mPxbF4q14IauR8hFZ
	Y9P4l4QoX5HRwnIhJhtuziUBm0mNnQHCOfZwg/w2tU6Aw3lqOptA/P++3nJIuVbxBudv5iIMWHm
	MGPsIBSpPpCOdfZ5mejXZrK1EIla8WQWUAj5R6903fpOC7GnkzNnAWFuRSFdT4VzI70agMFtLVb
	20e/wUsndgMgVPfIWtPQwoDEywtuo4ipdVfcOvb1GOKRJQIbEv1lf99i2ZdkdxjwWXle+bwYZ9q
	GA2rwu8kMOZcGS57hGPOtMIrQZmVFQF/gYt7KzE1UFfa1vTN5IeJYOXp9LH7N7mBRE1PuoizMnU
	WGPYU=
X-Received: by 2002:ac8:7d88:0:b0:509:1924:3f60 with SMTP id d75a77b69052e-50b1490a4d5mr26569741cf.9.1773834398356;
        Wed, 18 Mar 2026 04:46:38 -0700 (PDT)
X-Received: by 2002:ac8:7d88:0:b0:509:1924:3f60 with SMTP id d75a77b69052e-50b1490a4d5mr26569581cf.9.1773834397962;
        Wed, 18 Mar 2026 04:46:37 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97f1689d2dsm184500566b.35.2026.03.18.04.46.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2026 04:46:37 -0700 (PDT)
Message-ID: <e5dcf0b9-3a46-4432-bd74-4c509bbf49d7@oss.qualcomm.com>
Date: Wed, 18 Mar 2026 12:46:34 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/5] arm64: dts: qcom: sdm845-xiaomi-beryllium:
 Introduce framebuffer
To: david@ixit.cz, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Sam Day <me@samcday.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        Petr Hodina <petr.hodina@protonmail.com>
References: <20260317-beryllium-fb-v2-0-36b69dfb760c@ixit.cz>
 <20260317-beryllium-fb-v2-1-36b69dfb760c@ixit.cz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260317-beryllium-fb-v2-1-36b69dfb760c@ixit.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=bIcb4f+Z c=1 sm=1 tr=0 ts=69ba909f cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=sfOm8-O8AAAA:8 a=Zz-eXXhDp20MwffFlEUA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=TvTJqdcANYtsRzA46cdi:22
X-Proofpoint-ORIG-GUID: stqY0tdDFa4IOBqQ-_azcWNSbdwrA-ie
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDA5OSBTYWx0ZWRfX8kCkhINPkSvv
 bNJg9rL1NDQBZlO0n53wWc7r3LqMSHBWJZm/dqM3wDYrnot+yG826uRBxYTIScoXEuTIp+IOEEn
 JtKuGKSAaxo2H8WrRI4ENks3OZ8c6HGPWE/i7UwJ+U+W4wrrYNSeoc2M3MkGbpO9tt7NM/marGL
 jY0tkpyVPAtHnVzNKjXC1bQOiAGpLjZfal5hd/N9Gb8OSXZpyzSi1mREa9evbvtQwQg0z+ksId1
 ncY4Rexub7bMhAyFNCT9VxeAYyKd/kBctmivpjQqoxD3jYqtHIXCV4s0tGGc0de6WWHzaVz8wry
 hLUJRcCZPfMmAYMp2AH5ySNgaj6Xe/campztzAsKQNniDAkA3mwzTjKdj4LiFauX/XINFj/fSBg
 l4pBZT9ird0W4KuvPIZeYXv5Ts/odE9GRB163PTVR3czrBi18Ux9wU4UoieTM8tCh7aJCoWOiKc
 OVjVV1gOvX/q3lTFiaA==
X-Proofpoint-GUID: stqY0tdDFa4IOBqQ-_azcWNSbdwrA-ie
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-18_01,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 malwarescore=0 adultscore=0 lowpriorityscore=0
 clxscore=1015 priorityscore=1501 bulkscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603180099
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,protonmail.com];
	TAGGED_FROM(0.00)[bounces-277173-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,protonmail.com:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 350392BB087
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/17/26 11:12 PM, David Heidelberg via B4 Relay wrote:
> From: Petr Hodina <petr.hodina@protonmail.com>
> 
> Add framebuffer for early console and u-boot support.
> 
> Signed-off-by: Petr Hodina <petr.hodina@protonmail.com>
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  .../boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi    | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi b/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi
> index 01b570d0880d6..b928100f6464b 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi
> @@ -39,6 +39,22 @@ aliases {
>  		serial1 = &uart6;
>  	};
>  
> +	chosen {
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +
> +		framebuffer: framebuffer-0 {

If you don't expect more framebuffers in the future, just 'framebuffer'
for the name is OK

Konrad

