Return-Path: <devicetree+bounces-263895-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IBVHFX6iiWmWAAUAu9opvQ
	(envelope-from <devicetree+bounces-263895-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 10:01:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CFAB10D4F1
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 10:01:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A53D7300874F
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 08:57:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5698326924;
	Mon,  9 Feb 2026 08:57:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mas/vHPy";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ENkpl3/A"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EB6E2DC77E
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 08:57:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770627468; cv=none; b=ZN4KoW1FaRK9s/wGGQp/LFVcgzLRptU4cG6oleTKccDNLPM1//+Zv7i1dPzz0wliroFxt7nlqLfEedEY9+quw+X4xpYOjX34XwT50IX17A0NaiVu4hVtN8JbjygR3QACawkCr1I5yikLWGHHEQq8/jSLacrHAXfXoj7AdrCVpJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770627468; c=relaxed/simple;
	bh=GldcBPlwVJKEip/JPTL6/izNX3WxBSNoIRJ5jZ18FcM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=M+sAFA4YDmhIT8ZtmpGB6wH6FTKJZUisn9wpxVbCPtIm7vgMEWHiaTc5cMfEDkhDq4g/MFBgUMPMki7+zSb7J8LuY9AYTjGZeekUwGxfOSrTbVwyI1yiSWdIBcUCQ4ynkm/QWBFwrTwKRbwvzAV4XNxBsHWJJmy5OH3L8dM1gJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mas/vHPy; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ENkpl3/A; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61984VgI3120604
	for <devicetree@vger.kernel.org>; Mon, 9 Feb 2026 08:57:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yjupU9AWHYtxk5T+fAWQX+xLIm/U2NqJ5Br0t3a0rk8=; b=mas/vHPymQByeobs
	mf7mVOXyBm3qhkGMosj9sZ9hOC65AHghrBFoJsJkjJVLiZ+RDumnSobpqaqLGxAd
	dODT1nkq5cvtn+vcJR7qpukiHZ3tIKynnDq4iqAk6KO/gpitk1BYizVN0F4iXdBJ
	d1GFhUYzCkBDiTANIhuJfnjIAQDdmARWa26eehpTQs070nw93hqr/wjSbAWAcCAI
	cFZMMLkl75RY5YBrJaEU3PNr8REKXrA1it6ZTGqAqctDSZkFtkoeRcA0D4V10CRd
	ElxvfOZXyoE5Y94txMFYQiEeJK77N7l8mSK08fjeVrA4/NqZjPdtgws/eThgmQVC
	FHneRA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c6g65asxe-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 08:57:47 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c6a182d4e1so60929685a.0
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 00:57:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770627467; x=1771232267; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yjupU9AWHYtxk5T+fAWQX+xLIm/U2NqJ5Br0t3a0rk8=;
        b=ENkpl3/Acx00VwhXikKbW+yMY8Ymzsai0pPgQRNbP8ivR0aW05V5DMPLSKtV4srjZq
         68g4rmbgQ5eHF2Op3+ScbLfKEnDFP4Xu4RTZ2CC5Gm867qF6Nadg52WhSl8UgvRlmemJ
         0qUnQQT2Z0/53iUqYaKdcEtA9eV1mumkelEGjN4DUzkGj3uWRXJWe98V4GheBGahjX5s
         DHc4+B0LH2+zIoUP2lWo2Il6nmnKHM6+q6zaLojksWewmvotBEODbZ0z5iIFjFQNGmI/
         jnGq3HfAcj6T5cpJFFk6mUyNJVMqCfVW6uXB+MtgQN5eyVnUz3LPHllsN5zO9Y9ke9kn
         YlIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770627467; x=1771232267;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yjupU9AWHYtxk5T+fAWQX+xLIm/U2NqJ5Br0t3a0rk8=;
        b=NEFw/D7O3O4EIVejyPbXs1XRRQOpNqsVNAnVNXt+sCNlt7E6jUOvqqHfyo7jn0gzCC
         /lugs/f+PJeqKKjd1vJuDf/5ujruS6JDga+EWCQ6AHXuteHbqwkT621/Kwa+aX0uiGDv
         RdUWVmutaqnAxFJCXk+lR8vzz7p7KA9y15GMh1mamhjX7N7tMo8XZIa6oFeiWbyPCTNq
         1zHF7YHxw75lElw5nwgwqhOPNQLHdONstcF49qNiT4MjxG5EIhp+f1tOIt1N6lZxHn0P
         4DUZ6tNkBcv7RgrpLUP/oW7CrlakXTEk/GX2htmieyicSwuj2Wyi2090EGbp4yv2aG5k
         N2MQ==
X-Forwarded-Encrypted: i=1; AJvYcCWcEsztJzHPf97QoJViGDgU/c5EqTKLun4nyUnJjgPxyR1YUlogYonU6GZ4ubsEtwIJtBtr8YdxMYAP@vger.kernel.org
X-Gm-Message-State: AOJu0YynRmi4PcQBpTKpyk2B7NKL+XEyhDbBR04SMuHZgP37NCtBYvtO
	2lmAY4sLfwr0btjdDi6Gb4c9/DLwLsQK62G+m/h/EmJjS0+gVaRO9zyDI85UdYgIkae3ueJEuLM
	TGGwzXqir1shPIsMU3NksNGTgNbTlmrfppd0x1K1IP8PM7pxpU/GcVvuP1Cv+GjLY
X-Gm-Gg: AZuq6aI6sEpW+1bpZNcAr6N8ZrfEL67F2q+n6lW3QEEdjLVw31ErQrgVIPyxUXeSQfo
	lHQH01AF5b1ovhS5HQeeSbKPjDYpg0ZIW43SrpPCzeWrl7N/m2xwo2XdF5/GoM/EpHZbKn8x/Vg
	44dOykLDCpcwa4OkoHcPT3EXHH4adrf7eEO8Y73pACoEbVHelTtDo7N9kiMgy6NTUQ4Lzi56GdC
	Y1U7piZXXaQfni5P9Cn5Co/MyxYCeSwOkEenrebDO/bmW27zZ3VceV3keKHlDHk6GRt6UkSaO9g
	g+1KwlH+D+m13BF0RPjs1t96kSNEkQhuDO8Q8tGUt6nZ/f2bNVlb9VapJQxAOJBZEZI2M4b6RBX
	87oyHH1eYdqn3RVw+BTPUT2aTZeIZoaVFfMIa+ZidH7tMnpEG/2PKPJuwAynkkIxFViU=
X-Received: by 2002:a05:620a:25cf:b0:8c9:fefa:89d5 with SMTP id af79cd13be357-8caf13ff1demr1112746985a.10.1770627466869;
        Mon, 09 Feb 2026 00:57:46 -0800 (PST)
X-Received: by 2002:a05:620a:25cf:b0:8c9:fefa:89d5 with SMTP id af79cd13be357-8caf13ff1demr1112746185a.10.1770627466425;
        Mon, 09 Feb 2026 00:57:46 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8eda7a3045sm368801966b.22.2026.02.09.00.57.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Feb 2026 00:57:45 -0800 (PST)
Message-ID: <efac4464-6bed-4507-9c7b-a95863f15213@oss.qualcomm.com>
Date: Mon, 9 Feb 2026 09:57:43 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] arm64: dts: qcom: x1-vivobook-s15: create a common
 dtsi for Hamoa and Purwa variants
To: jens.glathe@oldschoolsolutions.biz,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Maud Spierings <maud_spierings@hotmail.com>
References: <20260208-b4-vivobook-v1-0-3a9b5e153909@oldschoolsolutions.biz>
 <20260208-b4-vivobook-v1-3-3a9b5e153909@oldschoolsolutions.biz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260208-b4-vivobook-v1-3-3a9b5e153909@oldschoolsolutions.biz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=GqNPO01C c=1 sm=1 tr=0 ts=6989a18b cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=gxl3bz0cAAAA:8 a=6aO9SdsguKCRYGpIm_4A:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=kiRiLd-pWN9FGgpmzFdl:22
X-Proofpoint-ORIG-GUID: sDEJgdsXYZFb8DsZA3Hl3hg8Ke1mJA3H
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA5MDA3NCBTYWx0ZWRfX/NBNNgYRhdmT
 9nXIOzElMs47+IB88JPebgzePaFlbvKSXmgWxSOwzgzFbsQWZWeRn6woPBYVZ7lQ0RXjzuR0Dy0
 gwP4bcf69tJtb008RPEB0KDx4j3HSmOW15T9pNXxqBfvRtY+Nnwxkh7gXZAOTahTO0d0iBdaEG1
 h93OWHSCbFBb+CvPDI8SIZbN6NanAmaDdD4nIHVtsZVfqUpuvV0B5xfl6YCmXqKNnmrzjjIMH0v
 9CX1HMhnEk/tKuzZd4oKUS4YpEOXEHV1EpqxvIaVz3M2JpFBfH/ltc7nMUDuz40wTLa9N+g/3e0
 fNBsK1Mc6bjiZuTEMmEv779yvGvtMljDsSzn73zOiE8Y3WL+zi+DfPDwegeV60T1NF9DPw4v9Yo
 UkuwmSMemXyMSaTq249dBjLpBBWeWp2RneAOaYopMmfN3nOqOwc+9o6H2mhNfqQPQv4qpe3ky3h
 fUTrmU+OcC7Maumyejg==
X-Proofpoint-GUID: sDEJgdsXYZFb8DsZA3Hl3hg8Ke1mJA3H
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-08_05,2026-02-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 malwarescore=0 adultscore=0 spamscore=0
 bulkscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602090074
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,hotmail.com];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_FROM(0.00)[bounces-263895-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 0CFAB10D4F1
X-Rspamd-Action: no action

On 2/8/26 10:25 PM, Jens Glathe via B4 Relay wrote:
> From: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> 
> The Asus VivoBook S15 S5507QA is sold with x1e-78-100 and x1p-42-100 SKUs.
> Put the common part into one dtsi file to be included for model-specific dts.
> 
> Signed-off-by: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> ---
>  ...-vivobook-s15.dts => x1-asus-vivobook-s15.dtsi} | 28 ----------------------
>  1 file changed, 28 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100-asus-vivobook-s15.dts b/arch/arm64/boot/dts/qcom/x1-asus-vivobook-s15.dtsi
> similarity index 97%
> copy from arch/arm64/boot/dts/qcom/x1e80100-asus-vivobook-s15.dts
> copy to arch/arm64/boot/dts/qcom/x1-asus-vivobook-s15.dtsi

I'd expect the part of the next patch that includes this new DTSI in
the hamoa-based DTS to be present in this one

Konrad

