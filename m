Return-Path: <devicetree+bounces-260405-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IA+tGbUJemkK2AEAu9opvQ
	(envelope-from <devicetree+bounces-260405-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 14:05:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 13612A1CC9
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 14:05:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 90F38300C03F
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 13:05:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42549352C2D;
	Wed, 28 Jan 2026 13:05:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Tl3KLk/a";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JWXSAM5P"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5A55352928
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 13:05:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769605550; cv=none; b=n8JN8/FTncQawU3ueFtTSx8WZFaAT2M7tcnTbvis78RL0wNWWJPBSJ+oOsAu+BE7jQHG38Yqvf6RTVKRmKrkQPl1/ImQJ527kpHR5I5OwSpKn9NVzerVxVtsFFlRBjj+5pMlc5aICG5+78JIFCRhaaGS6S8HTZYc2f+c+4RLRLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769605550; c=relaxed/simple;
	bh=bH76/QTPcRxzHY4tUxojdSs6Cro8RoPOo1iFYRRrfF8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dY2XsP/CThUCZD8CVdF/mymDs99LNBKpxzKXfHzXM8usIIRE1tBNsTOS1HBPusSW0HT6BnvFFi0M9JLie9gL4wKHt/Xx3cF6skvEpuD3frDZcie+czOOrdTu/0pn/KuYwSg9V81XXYifs+guFzVm8aTXOVzsYHbao1cOWAujInw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Tl3KLk/a; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JWXSAM5P; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60S938M93247497
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 13:05:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	53awUpiyXimko7CQX2fVOIT8jsbK3XQzIJl3V92zEgY=; b=Tl3KLk/ap4zenZj1
	3hmN+QI7xpvcBy/0KGTSf74CqdaVRVPBDn4J6nWUMIEZkPSW7F3hhlZQHaSUWdfc
	9RxJQuzaRTOsvSSR5DJ2GNAVCwSOfHGHKFfr+XLj5bOaLHpkb+p9EOo/tE8YFPgs
	6MEmjI/eWqD1uUdiN9inT8HlVV2w1FVndsKbOQV2QfN8bWY2meD33IWh6HojdIhK
	0+PF627JdVt2vTb6ll0lLOBVeSZfvjedtF5x6QUZ5oOSrdiTpZ+XHdLYKtsfnvm0
	eiwGFfwQp+9eHFEV0G6J6Rp0aactUpX9v3iy1ADaalueaCREw9OfbpgrCjCTy2Og
	TLPXbg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bydfk19f0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 13:05:47 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-29f25e494c2so12877675ad.0
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 05:05:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769605546; x=1770210346; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=53awUpiyXimko7CQX2fVOIT8jsbK3XQzIJl3V92zEgY=;
        b=JWXSAM5PzWIF1bikkm2Lw7vAuxCIMmDBc8GB35Y53GiCw/ZSQIBbzyjSFdZBfQrH4R
         V8QQ8tckcVkoX//j2UUcNTPL5q3jzAl1FodSXhxOgOj3FdCGehdxn+BeanmBCzL76Kud
         xX0Wf9T65AgvQmNzzEkbgBG+cnMIbZJomf213Dg9cdwN8MRbDLRS3xEzQvCpIjdMZFIb
         JgFB872JFLRKuKs+XUJj/9wDd9wsmmo88Av6Tlc4bTGCPEt3ZwToTqz4xM2/W3xNIYtW
         E+Wc+/tjKOSibeDa0bY9/Sc5rp83DBY+nCiaKRyvB/2HW9x1UGWzpLKocg0IO2bEW50b
         V2Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769605546; x=1770210346;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=53awUpiyXimko7CQX2fVOIT8jsbK3XQzIJl3V92zEgY=;
        b=tzh5RxZ0Hxn62bNe3/p9dQmQx89DCdO7Pa5i9GORAnlBNrcDUAKySh3xEDCk8G/rmO
         tK1SniUL21V4M/AuFk4K4ETomXy0DmafvWST+uOPTrlcnTN74fKFXMwPwx/SfsLQUXxF
         G9qn8FqDWFy+x3ip1CWQ6izVOs6V4JWPuieuwFoeZNUo9TyMUCVcGnSTloaYpaY7GXCD
         Lu7SU40wCqWh6+dcnJA3+aT7nkOXfUeeksqldawfxBzia26AJb1QRRG0JI0J0KxWqPaT
         SrLmOJjmiIKMA3Br6QzR1CXBrkyACCi2UFzrPdtKSacGEyjuS8+gNlnJ60KKMOcz+f4E
         Oqnw==
X-Forwarded-Encrypted: i=1; AJvYcCV69PcYmQcVDR7qwCl8EYLABSa9TzuNiHfUD0KKRHx3Ss+Xm4TsuJa5f2Uxuov7CmN3upJDJhVZFb8Z@vger.kernel.org
X-Gm-Message-State: AOJu0YyGm9dLVR5Ibcb69DqjuvimdI27Ycu13ve6tTxTngNoYaF5F6C1
	GQdFfgAzWkGHvoV6yqj1jIaBx7O0WT0dx1CWc5yZ8M5PWZxsCVqQgv3Bzp9cdyADMMWFi9Vbjho
	8BqHYEGY5650Yi4RVdOJ+/545XtxaOwhlchdHClMz6IAOEJofrE1Ix2N3K3gT0rGr
X-Gm-Gg: AZuq6aI0HgP85HAe13l/jVXhXLEtvdC/tYv6R/eL1lnQnYLpZ/YxMEErOeLjOUUqvJ0
	Z5Qe03ya69m+hBqtuWtSOu4yCmpILZC9ynKjL8zkawLOuV0ns5ALEeSxc0eelfqcuiWHKOm5u5A
	hEefwjlrYT8AZd792M76jCJFlN014SDtHTOYxwfRAqN9bhxPYcqA6CjBoV5vCt1BwI2iUKmlUyC
	Zhb/1K8PxmenZFyx8D5wNZegbMu7bp614vfi/QmDNVejMnlYnSEATbU8EFBsbCTdK7KGbjJ1vRT
	SfEfS0ScD24hb4+BttSTv8p9meUjL+R/XjaJSJVx2zB4gcv2Ml3LUI5APX1/9ddPtWHIZDjtZFk
	SwXX4WpilnOLjaJkhKeeL/KBe3NFPRBuYoCjuf1jjGXg=
X-Received: by 2002:a17:903:2f91:b0:2a0:f0e5:74eb with SMTP id d9443c01a7336-2a87134d275mr51385605ad.28.1769605546319;
        Wed, 28 Jan 2026 05:05:46 -0800 (PST)
X-Received: by 2002:a17:903:2f91:b0:2a0:f0e5:74eb with SMTP id d9443c01a7336-2a87134d275mr51385125ad.28.1769605545689;
        Wed, 28 Jan 2026 05:05:45 -0800 (PST)
Received: from [192.168.0.171] ([49.205.248.59])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b6fd513sm23324685ad.95.2026.01.28.05.05.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jan 2026 05:05:45 -0800 (PST)
Message-ID: <815c3b94-7237-43d4-9f28-4af0787f2152@oss.qualcomm.com>
Date: Wed, 28 Jan 2026 18:35:38 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/4] media: qcom: venus: flip the venus/iris switch
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Stanimir Varbanov <stanimir.varbanov@linaro.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20260127-venus-iris-flip-switch-v3-0-7f37689f4b39@oss.qualcomm.com>
 <20260127-venus-iris-flip-switch-v3-4-7f37689f4b39@oss.qualcomm.com>
Content-Language: en-US
From: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
In-Reply-To: <20260127-venus-iris-flip-switch-v3-4-7f37689f4b39@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI4MDEwNyBTYWx0ZWRfX9YMsbMx2GV22
 hJ7pq4dgGSKzdQKSQGnZQVI7/zwiN70v4vAlbN9BnsE/3ObsAeyH/6q509aaUFZzyThZ2LPYawD
 294zpMuLBaU1zhDv0H6FkT98+LPgDWLW6Yj6wb+HwehD+qIoPxlGYRkjt0Y/f7r5NOtLN4OD81M
 WMIbVoKK7bdeXYxFtSW2YzCA5SK5KbK7Au58qTl0MlYGsH5DT7dMfbePbkSna8Hq6F4WSbf1AIz
 5Ny5W6iaBAz6AUsW0AjO5Pfc6xR2eSlqDkU+FbcBDBz1BcE3XiDZql01x5WwMBbL3Aim5QxIKky
 9IhA2vKa9aJ0qQA8Ppm8aCCoAjFTKgOImwKPtiMepI3v9Osogeqoz2pfNbg00PyoI6N/b2l/2OA
 /MlkhEx8kf4hZS+e+o9ZB40qhA3Iz0gJPL0TrHWGoIKez3ivuIAK4RTtRCdmwXXLkH9CyU97Dc7
 24/9SDc/G8bvxWL4EKw==
X-Authority-Analysis: v=2.4 cv=XfWEDY55 c=1 sm=1 tr=0 ts=697a09ab cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=4hJEjaH6g9CgPEswoao2AA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=d5ADb93ID7zXtwdUo70A:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: dck85sW1qlzCG1SJbLCCe_yJWQcHcZyK
X-Proofpoint-ORIG-GUID: dck85sW1qlzCG1SJbLCCe_yJWQcHcZyK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_02,2026-01-28_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 impostorscore=0 phishscore=0 priorityscore=1501
 suspectscore=0 adultscore=0 bulkscore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601280107
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260405-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vikash.garodia@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 13612A1CC9
X-Rspamd-Action: no action


On 1/27/2026 5:53 PM, Dmitry Baryshkov wrote:
> With the Iris and Venus driver having more or less feature parity for
> "HFI 6xx" platforms and with Iris gaining support for SC7280, flip the
> switch. Use Iris by default for SM8250 and SC7280, the platforms which
> are supported by both drivers, and use Venus only if Iris is not
> compiled at all. Use IS_ENABLED to strip out the code and data
> structures which are used by the disabled platforms.
> 
> Reviewed-by: Konrad Dybcio<konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Dmitry Baryshkov<dmitry.baryshkov@oss.qualcomm.com>
> ---
>   drivers/media/platform/qcom/iris/iris_probe.c |  2 --
>   drivers/media/platform/qcom/venus/core.c      |  6 ++++++
>   drivers/media/platform/qcom/venus/core.h      | 11 +++++++++++
>   3 files changed, 17 insertions(+), 2 deletions(-)

Reviewed-by: Vikash Garodia <vikash.garodia@oss.qualcomm.com>

