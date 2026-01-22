Return-Path: <devicetree+bounces-258627-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iOa0LAaMcmlJmAAAu9opvQ
	(envelope-from <devicetree+bounces-258627-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 21:43:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FBC26D808
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 21:43:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EEF33301F9E6
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 20:42:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 553303939B0;
	Thu, 22 Jan 2026 20:42:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="b7ZXMa3J";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LaqNeumC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10DD439F334
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 20:42:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769114562; cv=none; b=Y8zklaeB0uwPoxaINdpKpciqndUMfLWzXG1m70g56fMKZOdX5xcvzHModzwO1wYpstFRi8ZjTSr+LbNiuWLHx/MgpYEGaHeXkne5rZYvX/qwdA7+NFpkq7xfMbxH36HLqcmO+UzZ4wgUolO8yJ2zaKoi9QdGgTgxQgJoD1aVP6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769114562; c=relaxed/simple;
	bh=AS36P5MO/Kxh/U7A13lJjITsHCMAjaIRsOLQhnSPn7Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PfN4b79AOloCZLl3dNsSiR68PLuxt74+3Vu0HSrx0+Ga0NkcBdeCPIgPDOO7vWfDfNJXX19KmxvtlleztBiXt4OqWx0z96wK+8FyvvkPaiL0jmMmHiMNCt8P+qOGGmXVyUUPFbsYkv/SmGYur9AKD1UsVMXenDEx1tsDJovWqkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=b7ZXMa3J; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LaqNeumC; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60MK7eVe3503749
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 20:42:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	me0aNI4mMyLtzynN7Ng5NC3nt/AQTmRsMvXl0A/kGWU=; b=b7ZXMa3J5TEjIsof
	lIyIqMXcDqE1YU8OjgTRLwO/MuZlBxxwuNWSW8JC17dPJUZV7OErpL989S5QHtm9
	Wdj07vI2goFzzXuvGpLPCfSVIIFTncDVAvUYjw861I9WU56ZefQQ2CzN6IU4J5Ax
	pRbYhrBoW16MkGT4YFTDs50UNmHCITWZKI7ZyQYu/Vm8XMxcY9vcoXTNTPHZLmma
	vzkWevEv7em847wfsGFMISlnB9bgHUn+iWNkkN6JhcmuCc+XACoDUs+6rEaAkLct
	lgamRD8GlJ6ob5BDdZxXJBHPr+BWK55WzlHCmO4i8GUaCZT9rKlxnAVnhwhxL2AY
	3HShsQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bus980bm2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 20:42:29 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-88887682068so5152976d6.0
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 12:42:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769114548; x=1769719348; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=me0aNI4mMyLtzynN7Ng5NC3nt/AQTmRsMvXl0A/kGWU=;
        b=LaqNeumCMha+ij54mBnsK6oAbAGZccpgT6IIqyDcJb///d1GcAqxnZ8RuSufxlLsFt
         Y5w6NsVCUqTIW5nZqHokOq7vpmlpeP7b1DaK5VOn5UDkgAThoG3NPOAM72AapdwFpxvg
         lfobcAgYVDK109TtaxVrfcNZcNz1Q6bM5Tz3fMdhSj36C66c8ppYqjGmQLUdaanIodsJ
         MBclKQj71ikxHHhqwEVBk+S0TOMAcU5LAR/0uLEpucR6mg8qaXrnPJYkkUX/XGoK5i47
         1gzSp7kaGssmmyuuNqn/pd5OMRBJtfvP6ftjhuK0eeXHA65GprSJNgduVx1pmbexgZpY
         wFUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769114548; x=1769719348;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=me0aNI4mMyLtzynN7Ng5NC3nt/AQTmRsMvXl0A/kGWU=;
        b=oSo3Xn6ys55h5c8i/9a800HaSEy5kZv0VSu6bpRNJprJ4pLXr9FFKOhhCpCIGYrV+n
         PDRZ2+2Gr6i9DvD4ryxl0vkUZYtMJNbGHOYlLnGhtn/ox7TKWB8WEWjkojLApUoTdHwy
         zld3EtMot7kiXqYGdZ8/3O7L50O8+Zd6Ogi7wsOV8cyBqDtj5pMbE3+VcbWvku10EXOp
         XOpmmS3nKVmgRh3kartkjx78uDlGYtEdskPWJsElQKz6n45uSCUYMPQ9dfMmmBOFvHAH
         3UGACXvX40eV2xjphRraoxNKMKqW9sLidvd6zRrLI7960UY6Xu8PxAgpFyWeqJ18mdjk
         k+Iw==
X-Forwarded-Encrypted: i=1; AJvYcCWVQU2hihwvkRQn+DaRKhyeld9zjiLGzdtawQLyMwtrdqH6tsT37RXOF/OazebMTJLLFfDoMAX1SI3o@vger.kernel.org
X-Gm-Message-State: AOJu0Yy65P3FEKu0DOMd1mFF+znRXWfbfLO78mab7IXcIpKwDShX8KeB
	WHhrXhkW2svqCta2o0qIiq8mp2k0KEXsp72QRQBDosViOehLTbPnKacHF3hBPs8r6AzQn7pfaq7
	FmYJFstdiGQZyxDIf7upRz8lX6tL5kI0Ez5Js6RUDWkgvLTr1+xY8knak0GaOV19m
X-Gm-Gg: AZuq6aIpb+TpFiFavPIaLGZQhVZg8yqUIIitHNNl1OyHvqt4mq8FgSVGsXYjYMCFgPT
	85zHA+2RHrMHAgC9lzSUCgNeyV0HlqNulFtWylmHXf2mwSfIvsoGm7lZLuUNtHepyuXGuYCqcNY
	KDPyHCAFRVxpccVGoH21xS1MW703jAU1tRV1yHK48PLn7mZ7oPZOMRW/BAl7pdh0V6JIacmoHei
	mlNRm7mCxKElYaXAHvFKADcJ2I/CDLEGo2i1S31zvj0m1ne/74THQK9cDrxblvFzmWR+tfokqHf
	jDlwwydmIrAbiFkfsb/QU5+ftWsmnQpMismn924pDDO4yerWXDbCovbB5AW6Tiy+GLIGI4rDdV6
	eFNJ0bjy5b1RF9dD0lVTd/8F1LxRuPX6FDda6KCTE0k+TVIQsvzy5AcRgyDqmUmf2aZo=
X-Received: by 2002:a05:620a:3199:b0:8c5:3699:97d9 with SMTP id af79cd13be357-8c6e2e24e58mr76816385a.7.1769114548620;
        Thu, 22 Jan 2026 12:42:28 -0800 (PST)
X-Received: by 2002:a05:620a:3199:b0:8c5:3699:97d9 with SMTP id af79cd13be357-8c6e2e24e58mr76813485a.7.1769114548114;
        Thu, 22 Jan 2026 12:42:28 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6584b3f6ff8sm194246a12.15.2026.01.22.12.42.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Jan 2026 12:42:26 -0800 (PST)
Message-ID: <ff9599b4-85d7-4503-b8b4-41d35a7d7584@oss.qualcomm.com>
Date: Thu, 22 Jan 2026 21:42:23 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 4/4] arm64: dts: qcom: glymur: Enable Glymur CRD board
 support
To: Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260122-upstream_v3_glymur_introduction-v6-0-245f408ed82a@oss.qualcomm.com>
 <20260122-upstream_v3_glymur_introduction-v6-4-245f408ed82a@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260122-upstream_v3_glymur_introduction-v6-4-245f408ed82a@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIyMDE1OCBTYWx0ZWRfXzk+vzkRuiEaK
 PkSVWwWyLry7alUA8u9ckkiU8Tx+Nmysfo01eFE69b5hrXeYr1QB+5zmi42YFQf0z8qKIL4CwuP
 LgNDD0MnIScCdeE3bOEMTWbZde7yneb9ZQpFX1ZFQL5qwtgOQfXSToyE3VGINg+MA/iliBhV/Io
 LexP+xSikRmtLmbLf3ds3rxfPD73Qwqb1cbe/yi8GtEi5PsWB217iQtw+tG66W6zYK5HTollcLt
 ANKGRIpesxOszc0+W7x0lP19NJMkpKmAJTYr+E8qrS1ZukwgtNfIHTnzHziJIeoA+pPDEsTlZbA
 BdExft+li601Vw58mF1Dx8yLtsnc4r9h2KkH6nSWKMwkuu9zp1+VOATCLAXJFc28gM5gTFaz6m3
 /s3SYXtab00Y7MYtys621ShNrcE/nZZ4n8vVF3bTUZpR9VBDkzJKgsAO1H1AVXYB7QMxYAXoruJ
 6pTsRbFXF/yJmC/ymaw==
X-Authority-Analysis: v=2.4 cv=JuX8bc4C c=1 sm=1 tr=0 ts=69728bb5 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=xIsHbWxzb7IypilI7YIA:9
 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: _RkzjXoB1zEdPpM4f7MeA8plJ1CL8I5P
X-Proofpoint-ORIG-GUID: _RkzjXoB1zEdPpM4f7MeA8plJ1CL8I5P
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-22_04,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 spamscore=0 bulkscore=0 lowpriorityscore=0
 phishscore=0 suspectscore=0 clxscore=1015 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601220158
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-258627-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2FBC26D808
X-Rspamd-Action: no action

On 1/22/26 4:24 PM, Pankaj Patil wrote:
> Add initial device tree support for the Glymur Compute Reference
> Device(CRD) board, with this board dts glymur crd can boot to shell
> with rootfs on nvme and uart21 as serial console
> 
> Features enabled are:
> - Board and sleep clocks
> - Volume up/down keys
> - Regulators 0 - 4
> - Power supplies and sideband signals (PERST, WAKE, CLKREQ) for
>   PCIe3b/4/5/6 controllers and PHYs
> 
> Co-developed-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
> Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
> Co-developed-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> Co-developed-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
> Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
> Co-developed-by: Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
> Signed-off-by: Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
> ---

[...]

> +	wwan_reg_en: wwan-reg-en-state {
> +		pins = "gpio246";
> +		function = "gpio";
> +		drive-strength = <2>;
> +		bias-disable;
> +	};
> +};
> +
> 

.git/rebase-apply/patch:624: new blank line at EOF.

Konrad

