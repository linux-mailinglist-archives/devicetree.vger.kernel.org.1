Return-Path: <devicetree+bounces-261129-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EPjTGRd5fGmWNAIAu9opvQ
	(envelope-from <devicetree+bounces-261129-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 10:25:43 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B492CB8E4A
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 10:25:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3EB0F301F9E5
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 09:24:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98F5C353EC2;
	Fri, 30 Jan 2026 09:24:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="d1OXnJhf";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="N0hn0PmF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16F3635295C
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 09:24:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769765068; cv=none; b=KKJGZrbMNMR10+LhnPmhl90EyduqcLd4PDOCGHpX51ij3uBq93gU8qv7ryZKfwMl5uTQlhYecovfxj1DqZ99kZUVngnb4eYTBOoGHEUnvFnIOvj27CmjKpFvSKk1N0NDr4MhIT6N+vb/UyZAuQ6ZEG3EtCYEv6sb1E4qXcygUDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769765068; c=relaxed/simple;
	bh=x9KQggMvdBzW2XWw0prsmdNny5w/coy431YP3PWuX0o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WEgqNJsbahqA29MQIFr6drCgbvu2bhBR65sYGDowmqYQNyZ8yWG2QEdppL2JoW/CqiOffIZcKVDjx6d2k595sPrWcF0Q4x+2adG/Cutzhkth244eSdwKAS0FSmqBPjnk+nYlA9hlEgIQV8ZKOldrA4otoLk4uPTyVTAyjJVUMz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=d1OXnJhf; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=N0hn0PmF; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60U4bZxp1485466
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 09:24:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0/rZU3GM7qaI3gxk5HPWg0rEGI+6crLKyL1un6ZegdE=; b=d1OXnJhfV2Vp3VsR
	q0V2/RrXDUco3w+/2BAti3UOJg/TpcaQnKMjOcnNSSDgE5t3Z+asRU8Zh/J6ZvCn
	forJTCBdON5ZsrZ6NyAAHmOx3N3KfyBuuI+LGHrF9jQUvcytoI/9KIMF688AqZqy
	JxJZylMi8wpQp6QJ1YcATlzo8fbFZ3vQLwrPUogXqERGa7300CUjtmjLk4oy04ht
	mkxzSzps+3o3wEGqTWFb17sj9wEKzYOJDuzp9QI51ibjcmXSpVe7WQeQkf25ZHZx
	dkmEEdLm3jw8NPwPygc+m7H+W7A2n2IJqYMDcDoetWGxh8DUHDs9pE3Si31OFOGH
	QaMogQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c0nsf8st2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 09:24:26 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c533f07450so13265485a.0
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 01:24:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769765065; x=1770369865; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0/rZU3GM7qaI3gxk5HPWg0rEGI+6crLKyL1un6ZegdE=;
        b=N0hn0PmFyWjvrjC/5HhIBSgAmQewBJJWXrPjepQjzSjCkSNCZoxDiIyHoVShXUskUE
         xrTh1Y5h6I891Y1f+txAwImds0cKxrm2v/3XLm9DThq+B6C2cBZk0Qf53YTRzFDguPwe
         zHSh15p4/K6aoaQY8O+UrjlRMTjRkz1vCYsRTSlAnMgFSXLXnb4s35m1FyWSyf13NwxV
         4JRf4CsfSZgcasyGuhltO+WrKrAyu30LLRBFmYe8Vl6S2oou5gLPUbwAT707D9O/dHSW
         DYdtWQqYKudqylwT0eQT0zJ3GItYxaKabWfmtdL0CrDpiT4LK8Wd9hZsjMjuarPeXXfj
         98YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769765065; x=1770369865;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0/rZU3GM7qaI3gxk5HPWg0rEGI+6crLKyL1un6ZegdE=;
        b=N8if1Z7j2tLZcJ51mQgV/EAdjF2dkWadMT+4mkdTunDurxLLkhktXFxc0A4UXNJKjW
         teyeB9zfrxxfbkUgM1aNQtNyuh43bpnQmmug/k92vXKjMA+BOvPsnPPMFtS8Pb2xqs2i
         8ijfk8vgk3YctKTsUHIUsLQBArEdVJD/xFQRpGNAHfcyGNNf+juq83zTVWkUJCBavFGv
         n4OSsR8IU8hEWrkn962F3R77nADmmVOJsg6n1K5U34bi79mLRPAVnSM+Osh0zCigDIJ0
         EKod10JIwr3EcVHCA/AlAv9q5s6L+mAMZvtC0iheiKko8O+GyBdXZpgR2VWIQG8KWfn/
         AXFA==
X-Forwarded-Encrypted: i=1; AJvYcCXoNAfWhDKr20GRlKQWXznqwBHw8meniFndPXahyriOcPc32CW5m+4iprYqwOulGLlP514uyG+7ZDJC@vger.kernel.org
X-Gm-Message-State: AOJu0YyhP/UpURve+gETR7SDtpeDW1eD8nLrzvTfJHiu2EWPS2nfYPAl
	CYAVizyoQw/VVqKIfgPfTFm/EkkgwJjnvUeo7uEgRHSIQXSp/ZMLeic+R2/KLkxkMysxnb+w0SR
	baaCZp+zErVFiRSWnZreC+mYGs5u4HlgX5dwIGzoaYo34r+RkJpZVew/3rOUN+L2XMmhmeBY7
X-Gm-Gg: AZuq6aLJOJ1/LpPVbZS4Zo/H19ooTx1U5wZivtpw454pbXgJkEsvcT3cAp+zfAN1tp+
	pwjZphUME0pjyd9K4qolLyWVbv4xiQt8Li6GvFw+c+qlKlNSTgIKnO1tKmBR1XTZ1gSObFhy+dZ
	04cjGVCItUVlCc46fYvJFv4MnTtazgOnu0eb4bjjX25mzCLvgjd+Kn0QBToyA9eKks5y5bRFB3U
	J53QvpYcj9HhWgqRXSbPFUiEOacso49FhmC+mtE4/bzGXg0wvupdmzXjvxpF80FvHp3GE6RYJYE
	DEMMEqxEicVjnC7fnv01pvP6nmPu0EMGMAUFG+k79u5Fn3W30/27sb55gcHthQWprPkZowJDnNJ
	Yx1PVdlhN21+rAJYbOGZ6/t8/ZN+EaB5WKqtBF8YpSmexYMAuCCOvDl9IfpxIaVvjlQA=
X-Received: by 2002:a05:620a:1714:b0:8c5:33bf:524c with SMTP id af79cd13be357-8c9eb30315dmr261851385a.6.1769765065216;
        Fri, 30 Jan 2026 01:24:25 -0800 (PST)
X-Received: by 2002:a05:620a:1714:b0:8c5:33bf:524c with SMTP id af79cd13be357-8c9eb30315dmr261849785a.6.1769765064712;
        Fri, 30 Jan 2026 01:24:24 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8ddcc71f56sm258397766b.11.2026.01.30.01.24.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jan 2026 01:24:24 -0800 (PST)
Message-ID: <68702c64-7ee9-4571-9fce-0b2d23b3c03d@oss.qualcomm.com>
Date: Fri, 30 Jan 2026 10:24:20 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: hamoa: Add remoteproc in EL2 device
 trees
To: Xin Liu <xin.liu@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com,
        jie.gan@oss.qualcomm.com
References: <20260130073113.3091884-1-xin.liu@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260130073113.3091884-1-xin.liu@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: mxJHqlCLLuhhcee8o9jXvLYQwJvZpmEp
X-Authority-Analysis: v=2.4 cv=EvjfbCcA c=1 sm=1 tr=0 ts=697c78ca cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=iBboiVjmBFT1cO5Qy4cA:9
 a=QEXdDO2ut3YA:10 a=eSe6kog-UzkA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: mxJHqlCLLuhhcee8o9jXvLYQwJvZpmEp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTMwMDA3NSBTYWx0ZWRfX125y66A526Rq
 HD35aPu5zhwfMtWGns5oO3VSZcK3X3LkqkDA1cxcH5E4vwiM7oJEmnWkbOhqu9jYNxdp0ohJVtQ
 YnJj9U6bXEDazhp2SIT4kqUdSXRRC42aVVwdCzxdyU34/Vjm8hqsVakS8eCJGTRf3gjM3xhfc8N
 26mUjKKQSNSluoIXwIUAwk9HoAvNttgppcdsUlIQp6asb0q/RT4uckt0uqDrm3GS4UriUl38lGU
 eBSScBjuZvI+zMiAbEuYIk/oYCmMohyEPbqK8W0WtuLyjddK8O2ZXmQM40N2Fr55BBcTNfmJ4tW
 4ErXkTQ/LIbjbzK12+ajQiOWdgOJG4XG71gXFWlFdO7F65M0shdeK/CIDDQ3qZI84Yu8UJkDIXT
 DLxGhV246N83KgJISkn1QRN1OMh085+McWAXApJyolb9u8lWBoLnskyZdEezO0Zt3rxLPDo73TE
 AsUdB4jsrBGhZdUEVUw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-29_03,2026-01-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 adultscore=0 malwarescore=0 impostorscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601300075
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261129-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B492CB8E4A
X-Rspamd-Action: no action

On 1/30/26 8:31 AM, Xin Liu wrote:
> All the existing variants Talos boards are using Gunyah hypervisor
> which means that, so far, Linux-based OS could only boot in EL1 on
> those devices.  However, it is possible for us to boot Linux at EL2
> on these devices [1].
> 
> When running under Gunyah, the remote processor firmware IOMMU streams
> are controlled by Gunyah. However, without Gunyah, the IOMMU is managed
> by the consumer of this DeviceTree. Therefore, describe the firmware
> streams for each remote processor.
> 
> Add remoteproc to the EL2 device trees to generate the corresponding
> -el2.dtb files.
> 
> [1]
> https://docs.qualcomm.com/bundle/publicresource/topics/80-70020-4/boot-developer-touchpoints.html#uefi
> 
> Signed-off-by: Xin Liu <xin.liu@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/x1-el2.dtso | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1-el2.dtso b/arch/arm64/boot/dts/qcom/x1-el2.dtso
> index 175679be01eb..8279854fd73c 100644
> --- a/arch/arm64/boot/dts/qcom/x1-el2.dtso
> +++ b/arch/arm64/boot/dts/qcom/x1-el2.dtso
> @@ -52,6 +52,14 @@ &pcie_smmu {
>  	status = "okay";
>  };
>  
> +&remoteproc_adsp {
> +	iommus = <&apps_smmu 0x1000 0x0>;

The mask should be 0x80 according to docs (although the resulting SID
is the same)

> +};
> +
> +&remoteproc_cdsp {
> +	iommus = <&apps_smmu 0x0c00 0x0>;

This looks in line with docs

Konrad

