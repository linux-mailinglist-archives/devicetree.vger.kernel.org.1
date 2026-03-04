Return-Path: <devicetree+bounces-271291-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6PsvFOW8qGlbwwAAu9opvQ
	(envelope-from <devicetree+bounces-271291-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 00:14:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C503E208E96
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 00:14:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 125B630E1CD8
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 23:11:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13902397692;
	Wed,  4 Mar 2026 23:11:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RgJfvyip";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WV7wi5xl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07DAA34E774
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 23:11:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772665877; cv=none; b=qxgiJR6qRhCVJW2kZUA9RMwvWJ6VMoE4iXLsIVmnNLuWFH6Q5OpY4k9VkVyTwXmn0iBW+ZMD9VamWphNz50p+ZexzbM2bJ8i4ad8/yGfvp/RN5eU0Vl8bFuo6zV6SRFrTUZwlC2A9sH4EbIKk8jUfIXh+L0TvPxU9gP1LFzrfdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772665877; c=relaxed/simple;
	bh=vOce/JE7LG1p+RGaZuWGSx2EqyEUcANfT1wKL237NiE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dq+qIoOAAlxdMNim6a5QRAdcYX1p11wxLZpCBnx7nE0Sk3lKh9h5pnc/D90a7Yh2Nvuu5OroCpxyBpQokwyNxXk5uod4xv/WdesNKMwd5CkYtd3RU6sH+vMTE+ez/hr05gLzldA7NS8CL+TpAxMLKo00v4RI7xtXgw1PaVchvss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RgJfvyip; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WV7wi5xl; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 624N6d14029301
	for <devicetree@vger.kernel.org>; Wed, 4 Mar 2026 23:11:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NNcYfHKnBv/HC5azm5P6gSUdX5OWno2quQz5/K2vsTs=; b=RgJfvyip2L6F/WAQ
	OWmicuy3GoCjE8kfmR6Zz4nxthsmx8dloIhN8Jtxp974jtkVtfb3ZueOxGaGeFT1
	Yv9L7/94yduQfQwSZfxi3FA7AxolU9trR+2OvbKCzItt2+NYgzYhP9Ir6c/Q88l0
	pmB8bUBgv1nEBDsYh/ip8kctCk5Cz/oJrMkuGvu6qqZlBs0aXcgGVTl9jFQvdxbC
	mdPXBJiubYK/lWSuMY0A4Y8sGzI0PNmKXiy47XX03kBU0Gq7hhxok/RLGWVw72tx
	3g3iADk9I6wW/JLCC1bMBtNJgIgq4a8nWgFfqrUDfy1G+mFT6KSjIyynfCvWUa0K
	IxHRMA==
Received: from mail-ot1-f69.google.com (mail-ot1-f69.google.com [209.85.210.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cpp4fhn24-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 23:11:14 +0000 (GMT)
Received: by mail-ot1-f69.google.com with SMTP id 46e09a7af769-7d4cb5810a0so49816092a34.1
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 15:11:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772665873; x=1773270673; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NNcYfHKnBv/HC5azm5P6gSUdX5OWno2quQz5/K2vsTs=;
        b=WV7wi5xl3fNk1PIKpuyMrbkAmtbt3UpC/EX9LzdCytln8SO0JfkcdeRv3CFv7t1cy1
         7rYUYBxCYPJpLvieBEpQQbbVRvxGPwvBTsA21PMEGo3ZkINKTHEv5WAxXrA4zvXOvqOF
         2TuqG++AwTlmfqo0jqHKE+wm4IjcfatEQ+kbBRqAbH+jQcWw4wpdFMK49DdpkKqA0RyE
         AS0vFVyGFnaev3WU5OgfrkIJNDYUXrzmaBHaGv1hMJROzra1Usctk7M7eqAsUNJ5lFQL
         DHoBvn3OXwuLYtPDfNWTClbokVyOPJvqcNrfiOccKhyGYvbkea5hU4epL3AEQAoJfkwV
         enAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772665873; x=1773270673;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NNcYfHKnBv/HC5azm5P6gSUdX5OWno2quQz5/K2vsTs=;
        b=PYiWyrlXEqG0YqwKi3eTeHYAvWDYjytN7wUFFQIjo/jbuILMJXEN/JLbimksNDL0nj
         VWOFdBOz6rtqdud6awcZjWMlEP1FZYRPdQ3sH7B+Dx3iuJDapcKxfaHAm+anwL4OD+cJ
         3K2gNS4EjJKaJGjhmvShyRhs26oZKlwbRhTD8cR4SZHRoXaMmQBXs9BWlmbByt6XNFQK
         4c8830/lW8zqbFUctoTg48DWpOBUyj0FyPLhPAQ+sCU/qEsV4UF3tIt9g1DzYM/7BrEs
         bIlij/iSPAQXuLfJJ5X1LGyq0NsOy3GBy1xld47+nSeCZMtjBoZ+dMcPtadkvu3EFuNJ
         /ANg==
X-Forwarded-Encrypted: i=1; AJvYcCX0NNfVhRmWpt0RjxElWI4EcfRMBiRNgvIXB81YoFG5RwydrVm49HB1upIdiEMP0Cfs2og4L6L/Uxwf@vger.kernel.org
X-Gm-Message-State: AOJu0YxamUXawTPoJEJdpTTA4soIH8B//7CuI2n4pSCJttDhrh76Neeq
	OjjHRjvEf5sB2hWYVUQA1G70E9eIuuM3mwrxD74DtDzQF0ZCcX78IsPgB/jrDmK0vy7P93DBEx3
	SS08zXGE5WDvGKAk41K7lPIxYem9jiUxOiOb+OyYObKjf5X4QDh8iqCPDg5iyKLZy
X-Gm-Gg: ATEYQzzuGxQGlfrcE1suWO4QEbM5JGa+sYHywoQS6zQWCphTocD/FHV/UcynfNv6PpV
	hLhO3iVqqXZ2h43Yj1LZFF79hz2lzsjUCCc+kklt0t+TpfD1B0KP+xf/02qSbb0MHRZIqmi6JOm
	NchUbFom0Dfe0VO9xhZar4yamPIYg8Ski8ztoQiBAm7IekNVnKP8jZBvYKbtEeZTRt20NYGR7uS
	WixU/5dHEpecelrZL6Ah1Nx0u/fVyaoGDzK+R9tK2aMZugjLiZRO7xwHDRd0TklZylWei0MmFEV
	yHyBXnUe5V6XoZlLo4VNDAH3kBHiGllVq7FW949+U3zgmcYP7LgwDxZwHSJv4cXPVlonGe0oTdx
	Fn6P6Mnx1R6Q/yyclRGnVA3DdjUxEA3n0hC4N443gSfO5SeYTmIyelEBx239gLE/mlUGVb6Xvx+
	6RMfybDlu1NHRmGQ==
X-Received: by 2002:a05:6830:2782:b0:7d4:5341:475b with SMTP id 46e09a7af769-7d6d13a5653mr2326955a34.22.1772665873544;
        Wed, 04 Mar 2026 15:11:13 -0800 (PST)
X-Received: by 2002:a05:6830:2782:b0:7d4:5341:475b with SMTP id 46e09a7af769-7d6d13a5653mr2326940a34.22.1772665873171;
        Wed, 04 Mar 2026 15:11:13 -0800 (PST)
Received: from [192.168.1.41] (c-24-130-122-79.hsd1.ca.comcast.net. [24.130.122.79])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d58644dd3asm16651056a34.4.2026.03.04.15.11.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Mar 2026 15:11:12 -0800 (PST)
Message-ID: <726aa68e-ef1d-4446-95d7-2d31e867a593@oss.qualcomm.com>
Date: Wed, 4 Mar 2026 15:11:10 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] dt-bindings: remoteproc: qcom,wcnss-pil: add WCN3610
 compatible
To: Kerigan Creighton <kerigancreighton@gmail.com>,
        linux-wireless@vger.kernel.org
Cc: loic.poulain@oss.qualcomm.com, wcn36xx@lists.infradead.org,
        andersson@kernel.org, mathieu.poirier@linaro.org,
        linux-remoteproc@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260304192409.927562-1-kerigancreighton@gmail.com>
 <20260304192409.927562-3-kerigancreighton@gmail.com>
From: Jeff Johnson <jeff.johnson@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <20260304192409.927562-3-kerigancreighton@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: esDOS1erb_7CR_CZlE8JrD5A3xoO8n59
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDE5MSBTYWx0ZWRfX8TmFOz01KapA
 hZq7Lq0f8uVv16NrwGbIZVTL1U7l1xtpTcKKtI41dKHUqwZmbJiHYS92ERgaVNdIo04jpruzLT5
 TZ+LwJFBztR/aO72Z02mweDHgp4BgMNMQBdsT8lAVzprmmLaFpCMrV1nar8Ji3IZPcDAZ48Sa1L
 UdC3lMv4O33U2jHR3VUt5rg+y78l+C4Frz5Y1XF0HCAhpG9psxv9R6hHE9aXNb7Yk5/GW7Aek7S
 ArTsGloovxBLZwc/Ns++Ss7rJQ/oBnQI687zC1r4oOenkwG7RpnpWo+DLfZHojC0dhp8XxOLlMg
 rN+eh6bJI0PzhzHdMMNEeZ+TNTa7duel+hZKWDMhnt6mjq/D5w5M7V0YqFwtI9sQqRrZ5Q/rlPJ
 nBnQDOK/Khnmx3vvaG4M7HctwrRj8MNykpLALe/m6Tw+5VWy09m5ZdlYg/Tc3nI6DihJwdhfl0U
 cQ7xEUKahQAek+dhVLg==
X-Authority-Analysis: v=2.4 cv=CdMFJbrl c=1 sm=1 tr=0 ts=69a8bc12 cx=c_pps
 a=z9lCQkyTxNhZyzAvolXo/A==:117 a=Tg7Z00WN3eLgNEO9NLUKUQ==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=VwQbUJbxAAAA:8 a=pGLkceISAAAA:8 a=qgblvH2Zgt1UI0Rk3qUA:9 a=QEXdDO2ut3YA:10
 a=EyFUmsFV_t8cxB2kMr4A:22
X-Proofpoint-GUID: esDOS1erb_7CR_CZlE8JrD5A3xoO8n59
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_08,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 lowpriorityscore=0 malwarescore=0
 clxscore=1015 adultscore=0 impostorscore=0 bulkscore=0 phishscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603040191
X-Rspamd-Queue-Id: C503E208E96
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271291-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:dkim,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	FREEMAIL_TO(0.00)[gmail.com,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jeff.johnson@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/4/2026 11:24 AM, Kerigan Creighton wrote:
> Document the qcom,wcn3610 compatible string for use with
> the qcom_wcnss_iris remoteproc driver.
> 
> Signed-off-by: Kerigan Creighton <kerigancreighton@gmail.com>

https://www.kernel.org/doc/html/latest/devicetree/bindings/submitting-patches.html

"The Documentation/ portion of the patch should come in the series before the
code implementing the binding."

Also ideally for any multi-patch series there should be a cover letter.


