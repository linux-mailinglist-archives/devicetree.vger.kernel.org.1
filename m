Return-Path: <devicetree+bounces-268349-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eJX+DO/rnmk/XwQAu9opvQ
	(envelope-from <devicetree+bounces-268349-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 13:32:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 42D33197662
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 13:32:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E550D305F23A
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 12:27:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 541C03AE71A;
	Wed, 25 Feb 2026 12:27:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EI7sR4ne";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PB5rGtQG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C883AE713
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 12:27:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772022464; cv=none; b=uM6iye4xBXn88lSVIx7FsoCHzJX5ZYE4PrXUd0SjKjMyv1job+7PgmqXdiUPSSiy9XfOgsBzkAXWmmToIKaoojBsMSxykd/SblgUZ+DxesaMWTsWsY2P713I20ngsFlxXBZpkAq+r9GsmZfPJi8gYWrwyxL+3kMIEdnH4Ln+I5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772022464; c=relaxed/simple;
	bh=lmOP14Bu15hKCJcfJsFNbgjaGMAN1gKX6Xs1zRpvce4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Wh7YKr+bg9Sf1D7H6WvtdjqQ+olxeqH9LQsrmaWvEaLmVZk0Qtp6ZFtsgK8+Dvcat41Yytu+NOnBxbhB2Z5em9YuymF8nJn2uOCAr6nrMb1g2hEVm80AvWh+TOCpCcOhgD59VKhiVJ/aj5GvM94fwgBCssWF9ISEWZWB0+YWqFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EI7sR4ne; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PB5rGtQG; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61P9Rvmu3056486
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 12:27:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	djR0gnFvb7yIczPMk8GCLKch2PIYdEZoalq5Lw+87vg=; b=EI7sR4ne5eOf2ZiU
	6D0P2IFvmhlNlxjBUN5Pp8NMmU33e1+tOLMprWPlPClzlBiY8+4Bu2vjqnYdYGFK
	vheYblEHDKcSe3LwhyWESWj1+LKDdj5zdkbTvuyp77rWSJXldmEBW/g6M2CdlwA4
	sO1UXMq++TODBKHLW5eAi2KhOnez16/1abbpwQulJHCbntfzXVFeSE8i1k4acVrz
	Jwj4Kn289tVZl7Wtd2k5OH21kMtXgpHkB9Tqj81N1iRFwHJBZDZw5aBV5ALXn778
	u1HVDSm8lDACb98/yWvubx+kymNvl0+89VRWX8Pi/ZDD0t0rhq0ybGWdn0raE70T
	lIlpXA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4chx39gkjm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 12:27:42 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8cb50fb0abdso651285785a.1
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 04:27:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772022462; x=1772627262; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=djR0gnFvb7yIczPMk8GCLKch2PIYdEZoalq5Lw+87vg=;
        b=PB5rGtQG8iZI6MXw6Drxt9cn8RaadKGxustQjkEPAmg/uNEKaGpNYgvsZYuu235Uc5
         mQl2XgLmu62nYbl6ktnGr4po4lxGOoRSG2A/PtV1joGj2LPEzLjVqHMfsvm+KQ25M+0D
         be9h0pbwS2nwPaii0ZMLqPGUcWl5ia7NxFS4pOTDRTfAiCmb6UiwnGnbZ1KiMmjbNtCG
         73KRgU1Z1uvvE56OQv2tQ5oLORnRDZRX7k7/kTGQSbdpoMmTn6WkC9/ODyFrFlwj395G
         134MUyLvk500CTAKgryUBir9v2x/xeS0zZmyi98mmsWkoBhoD33tcX+OUSYb2GSHYhaM
         6JUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772022462; x=1772627262;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=djR0gnFvb7yIczPMk8GCLKch2PIYdEZoalq5Lw+87vg=;
        b=bTvl27frlxN+x6llBlxMgqfExkIG/Y8NI9adZ8yuo7vIqP5V5HW7KM8xavC2np82uQ
         PRHG2LwQ2e4eiijBgPOw6aBuG+7T6m7YbHm/bNnNJN84Q/QVoYx6ewRPb+Mj1AWY/INu
         B2eQ0J+xh1Ysy7FIwdIagS8j/BQfaCv6N4P+9HWMy1tjJ1oYykmjF0WzvuK9XpiGbNV8
         PuCvD3Nd0hd1cvWNfzypdbloWb/w7hbzpZ7/ux7aFMHa5MpE8S8sV9AZbCuXG4zPnqcl
         ICHZ1vq+4zwKSxJCGyJARTD9ph33MSA7qXevskUlMA+m6ul7X5kt/TAAfbeu2mi34Y8i
         QZcg==
X-Forwarded-Encrypted: i=1; AJvYcCXMa7HbdcwRZEXPuRhg2WTDvU1gRNj0BdnlyziKByHpdQsqBPsDdc4HlaLIAkK16JCznKtpQ1VLx1GL@vger.kernel.org
X-Gm-Message-State: AOJu0YxECWA8T+97Nw7kNr2p9PG5fpJPcSA78xDRDvEw7maNrDfU1fJi
	7G0ZZz6K4T9xncD6NHy49rmCML3s8HqAK+fbTxa/iIXu0fD3oj1XGeNjMFGflT2C31wsNJTXVQr
	KVmbnokre3BwIpnk9ab8uy0JaJFbgx4ISvr+6DlD+URmIlykWfgQ69wLh6EYZ5wMV
X-Gm-Gg: ATEYQzy6BqTdYNaMxQUWCxqkf91nXXjVvnwZF5gIaFb2N6HTyZYVAKHxQi68jTqMWJL
	wu/YOg7ZM7b8D51uFAogtljgD9OTMc3S9/ZUicy3+CqjOT5FusI517lrHxult8JI9WefhrCgRpE
	r12FjFeEvQ5aWFOUxi8ggdNf7hT/bbNg+LYjkpwzBG1lCPoai6SdSSw2HAaJl0TC8OfoQ1QGSI2
	jfTucVVHTPW/T3vR9q44TuFai69Eni1mirE7uztxrZlknIWzryqaUZkrMO0yKSusDPFkKRdbPKL
	doCrzovOB4762wbYO+NLQTgTkDRn6FSN5zW7MBY0jzIOhY1CBysoe6mJkHrJiUe97SmuAinWBkd
	YUNbqVkquOBrEfY/BZ3gTRV6se0SG/Rs9/6azqLUki6AiXjtn7qRIqPZTYxdCCTeI2t82xn81HZ
	4Fn6M=
X-Received: by 2002:a05:620a:6910:b0:8cb:52c2:6f19 with SMTP id af79cd13be357-8cb8ca764b3mr1502792385a.7.1772022461558;
        Wed, 25 Feb 2026 04:27:41 -0800 (PST)
X-Received: by 2002:a05:620a:6910:b0:8cb:52c2:6f19 with SMTP id af79cd13be357-8cb8ca764b3mr1502770785a.7.1772022456370;
        Wed, 25 Feb 2026 04:27:36 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b934c9a645csm15099666b.34.2026.02.25.04.27.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Feb 2026 04:27:35 -0800 (PST)
Message-ID: <954f6a53-b597-47dd-926a-adb5a7513edb@oss.qualcomm.com>
Date: Wed, 25 Feb 2026 13:27:33 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3] arm64: dts: qcom: qcs8300-ride: Enable Bluetooth
 support
To: Wei Deng <wei.deng@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Marcel Holtmann <marcel@holtmann.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-bluetooth@vger.kernel.org,
        linux-pm@vger.kernel.org, cheng.jiang@oss.qualcomm.com,
        shuai.zhang@oss.qualcomm.com
References: <20260225091700.286108-1-wei.deng@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260225091700.286108-1-wei.deng@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI1MDEyMSBTYWx0ZWRfX4yeB2m5Kujqh
 3kdazq0KaaeyCwArtVYHiC9I+2DElgP+lyI+cm8cGWntJaaFbkK8dmElCbbZXX43xb/7oR9LOT/
 YLrTkTK4BBAQSGG+uejkboLzGtdZvU0Rx9sMP81Q3XEpkYTfS7qyjS6KPbdlw5263O6lu/P2wKQ
 XIk2rxSYVAsnhV8VnRQuaT/Ubd5PTwedYuWSmlsOglPU46WtDzRAnrRXnNNzRUiBnHIXRX42m3I
 e805NCWvH/GQHycK5O52MB6cgnzY/mphuK83cdt/tG/pVIgJDAwBiA7hhP+b4DiMjv6R4eJezC4
 fuo64Jl70Tu6b7uACy3uf/gKFc+F4atFjnnTmsEvwsMF9qGEpOjvBn+M65kjZhxJIveZncOqzFA
 zwE6hhTblWb/72G8v5y/GoSEJ9m8I7RNJBJKwycCw/R/EKBkbuLoEK64xJOq51hoBZ3a6XH3cL7
 UM5zfxJNAD1c1TUOFxg==
X-Authority-Analysis: v=2.4 cv=FvoIPmrq c=1 sm=1 tr=0 ts=699eeabe cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=ICuIv3KJ-OCJFd6aZL4A:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: IyE6L7kk5sDen6k6PlKzDWKfjzPuykhn
X-Proofpoint-ORIG-GUID: IyE6L7kk5sDen6k6PlKzDWKfjzPuykhn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-24_03,2026-02-25_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 bulkscore=0 lowpriorityscore=0 suspectscore=0
 impostorscore=0 priorityscore=1501 clxscore=1015 adultscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602250121
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268349-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,holtmann.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 42D33197662
X-Rspamd-Action: no action

On 2/25/26 10:17 AM, Wei Deng wrote:
> Enable BT on qcs8300-ride by adding a BT device tree node.
> 
> Since the platform uses the QCA6698 Bluetooth chip. While
> the QCA6698 shares the same IP core as the WCN6855, it has
> different RF components and RAM sizes, requiring new firmware
> files. Use the firmware-name property to specify the NVM and
> rampatch firmware to load.
> 
> Signed-off-by: Wei Deng <wei.deng@oss.qualcomm.com>
> ---
> This patch depends on:
> - WLAN
> https://lore.kernel.org/all/20260122053624.4068718-1-wei.zhang@oss.qualcomm.com/
> 
> Changes in v3:
> - Rebase patches
> - Remove unintended 'output-low' from bt-en-state pinctrl
> - Use prerequisite-message-id to replace prerequisite-patch-id (Konrad)

Only now did I realize you're the author of both patches!

Next time around, please keep them in the same series, for easier
tracking (since they're very much related)

[...]


> +&uart2 {
> +	status = "okay";
> +	bluetooth: bluetooth {

Ideally there'd be a newline separating the properties from the subnodes

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

