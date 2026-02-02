Return-Path: <devicetree+bounces-261632-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4FzNInNDgGnW5QIAu9opvQ
	(envelope-from <devicetree+bounces-261632-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 07:25:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DAA8C8A32
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 07:25:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4FDC93011879
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 06:25:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 183632F6900;
	Mon,  2 Feb 2026 06:25:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fE1pfskX";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OHci5IdU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B5F52F6188
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 06:25:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770013548; cv=none; b=g/GBY0QDoiHOPbdy0yz8WFWAEUjoqlgc+mw3XEGnqsxSqh2sMHIdmy8ovUW44gShHetbhyB2WeadkjoTBDLbS76nI6nyM3ihc/M+H/jCmJPwYF2FdSlRlmXUYZqKGz7eBwE3hJSS+nvQSf84ZYbRjW5alWmNKUaMw/0DIhM4O50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770013548; c=relaxed/simple;
	bh=QKQCQun2Iyzdg0FisykOBDaXIMlnhHY6tZJM+5iysK4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QcmHV7msm6ICAZNA20vmZ+Dfx3LTu86DFY+n1/AfX+hQnRtAINu9dm++NoDrqAR1kdjDC90pKOIImUCh4DlVpJmBV7vyWAAP9dnccp8R2L5rDHIXrlLG03QN29Y9ovpO7hGWQ/SiCNLJUCrwhG+ifvcmhZdOwYtHxBCuQ5BFog4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fE1pfskX; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OHci5IdU; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 611KxGRJ373372
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 06:25:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rbHVOMvWwq1SBsaVyz83Aw+1xfSO9+RoZ6AzrtEPWns=; b=fE1pfskXCQtd2tMJ
	gIzGvNvJ07Z524BuCiIKgQwnpIZAhvTS8ZbJlEA6cDxHSwXe2eH2NHrK1WcCg4U7
	pUG1/5rrXADwkdHDY0BoAjA/NDPl3u7va7GXv0r3eKQN+VNV9OiMOCpl5HEiSAgc
	vddAcblQc1kKvd4tlSmaZRWUQWmKkSnQqXrodlX9G5xYmnmlJ9+t9P99lzXCLOQX
	nX7B7hS2tXhConth5zTBwopdbGIYNcvhlEj9X8Ob4UB1eA5Zpid78DdhKdvzwmtY
	sLnVSnFhAZO3t9+M144Pr0yayaKD5GWoU5zYT9r3lQa0nJ51PoOjHBCNk7ky1eLG
	B5+xbw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c1arec5rd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 06:25:45 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-29f1f69eec6so44782575ad.1
        for <devicetree@vger.kernel.org>; Sun, 01 Feb 2026 22:25:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770013544; x=1770618344; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rbHVOMvWwq1SBsaVyz83Aw+1xfSO9+RoZ6AzrtEPWns=;
        b=OHci5IdUolR6hyf0139Al0EiwDUKBf1AnI60xmzEn5GRn5DTp/T9Mnt4TXLjFvpeXk
         h77JRABR2RdIObLbJ8Dwj1gCmwVqFIyESsV5iMagoO/KioxVMZX0NSLGSqA5kZFl+0wX
         jNJDTjVbMJPfgoxWNM/K8Bq+2eMs0Z8ohqT0RgpMOcQqAQFA6rrl3/XZtVWOy0yVNPFc
         wrk0CcsAS7Z+AuRJU7d1Ux+rdqPE236gbaOfB5UNFtpk06YZvCv++HYzc+H47rQJOApG
         M/1xU20Pf/r0GDZAMip3YivD/ODbm5Q8BOi3vZTLqarjTXbHT+Zt2/dIkFW6IOQX5I8/
         yRaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770013544; x=1770618344;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rbHVOMvWwq1SBsaVyz83Aw+1xfSO9+RoZ6AzrtEPWns=;
        b=evMprM6eSnq8ewmIs249huDcD0wg0egzWP098ieSx0gqbjZEAdklZ/xz29qeFNcOGQ
         V+1OGpgHHOgClv7nNx40WW/gAIhZSUKcFAk/eMNI12Sl0DRl08jbXB7wTzzv+ScepoY2
         B3+s4ripxuLzZJ9/G8wr7BKvuzEY1IqyOEmG9Ih10yQm9ZFtIfvv4OcrbDVRUuHPqBwJ
         ALhGB7um/v9xeT58WwO4ibG94/ePpjA+3/1I+U39vk/E0w5rxalK7L/1j/37uI5FCYjg
         vehqDOygfSuYgTkgJbZOd29ZqpiAqw6l30Ym1jSTMNWwc09V7a6V2jEXEApbtsZvpH50
         34FA==
X-Forwarded-Encrypted: i=1; AJvYcCUfQmJ1bNPDC2qmqD/FuXl2T9jgbE/PFEkmJFse5Lw3D/WVHmLempHlj9LWGRWmuVh7N8tfdAelsRW/@vger.kernel.org
X-Gm-Message-State: AOJu0YwFm7b7Zn8un8I6w9E+1fj7fXKA/N5hJY3Imus3mqGKwXXzYFOi
	Em8qXngSugLMz1Hvrxb2AZ84TSGO0qJCNxTHHw7aBHAkLy+lMh1PwcK7bIi7Tq6q57t7ZxY++Xp
	+WP4Cn8nG45Nu4bhMW4ooPZ4p6NeUAQHH3xeXK30JVvAsiZ0EX5by0SWe7r4WIoq0
X-Gm-Gg: AZuq6aLBpWk8DWgJFHjgRHLgKEk/G8BlRHD1XgvZW1FLd4Xzv3z53NhzTYJOuKbjZY8
	KnkcCCdwmEwja/TU+zjKb5wZyD/V6PMMz0NI9IhScKzIe/xkQF7jVV4E3NGylTZdbh395WUmMxe
	CsJmU8RhPwjlOattIDK5quiGpyjgw5oP03kL3Gr7UmZkA5QT3iV9UDarcOsDlTlxBc/lmDxqpsx
	5WfzxyTuuy6+xaspMZ2GbJp3L9XLoEA/7/Uzg4VI6Ajv1cHT/A2nZSDyYcKpiUYU5IqgGJrkx5e
	rzU9nWU/660FBuGzwFPTlqvf0x85XNPPQgkqRbWLqCm1h/4IDHyu/iySDrleVCnpuyzUogKe/Yn
	jjAxeRm286+4FxktXl+YXHymKiL7iT1igNWktypP3dOIK
X-Received: by 2002:a17:902:fc8d:b0:2a0:f47c:cfc with SMTP id d9443c01a7336-2a8d990b3e5mr96544305ad.34.1770013544385;
        Sun, 01 Feb 2026 22:25:44 -0800 (PST)
X-Received: by 2002:a17:902:fc8d:b0:2a0:f47c:cfc with SMTP id d9443c01a7336-2a8d990b3e5mr96543955ad.34.1770013543851;
        Sun, 01 Feb 2026 22:25:43 -0800 (PST)
Received: from [10.206.109.90] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b41390bsm132917265ad.23.2026.02.01.22.25.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 01 Feb 2026 22:25:43 -0800 (PST)
Message-ID: <151807c1-9a91-448a-9cb2-01c799890378@oss.qualcomm.com>
Date: Mon, 2 Feb 2026 11:55:37 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v4 5/5] media: qcom: venus: flip the venus/iris switch
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
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
References: <20260131-venus-iris-flip-switch-v4-0-e10b886771e1@oss.qualcomm.com>
 <20260131-venus-iris-flip-switch-v4-5-e10b886771e1@oss.qualcomm.com>
From: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>
In-Reply-To: <20260131-venus-iris-flip-switch-v4-5-e10b886771e1@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=NNfYOk6g c=1 sm=1 tr=0 ts=69804369 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=jz17cmUFc4N99GX7AB4A:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: jWgTBY0OyIC3nre0R8w9QMixxbQr17Fl
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDA1MyBTYWx0ZWRfXzDMgvmn/T30q
 GvjKE8cVIILnREtS50EJUmJAtG8w7of3RwkwjxF1lY74gbDLw4IJ3eTLjMCXjtdsEljlQ+WuQV8
 B4/c4USourm51SuPWW61eAxvcQsBWtMEMKfj7KXFHk4ce7EnN2foKXwaEfmLvlBw1sGiQqdkZdj
 50irjrxdlOOLd2WQxJY+JNTJSEdL5Nu++J8y6kX0qmAxsDWfc5giXq/Sft8cEUcJDc4iF+Sztly
 4WSl5DPcMxPkuvXvco8gAKhzYvWkqTgkNuKj5WnFz4swi8O64yb4QkMeOLfSu517q3d+RHfSj5C
 pwcKpUYW6nUfzfgcjsC7xyhPxXa7AF+qVHw6LLqBXVFfPjKbDQGBhEGpodTILfPYSEhpa3Efijt
 /vVO8hvIlponXFaAj0z4prd5TE91REI1HFxFgG8PiR1fiCZz7sShmfsXP5sUABfjD7x5MDSDRwr
 CLOXWHwLb4ayhEFP7Pw==
X-Proofpoint-ORIG-GUID: jWgTBY0OyIC3nre0R8w9QMixxbQr17Fl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_02,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 adultscore=0 priorityscore=1501
 clxscore=1015 suspectscore=0 spamscore=0 phishscore=0 bulkscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602020053
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261632-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dikshita.agarwal@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 1DAA8C8A32
X-Rspamd-Action: no action



On 1/31/2026 7:28 PM, Dmitry Baryshkov wrote:
> With the Iris and Venus driver having more or less feature parity for
> "HFI 6xx" platforms and with Iris gaining support for SC7280, flip the
> switch. Use Iris by default for SM8250 and SC7280, the platforms which
> are supported by both drivers, and use Venus only if Iris is not
> compiled at all. Use IS_ENABLED to strip out the code and data
> structures which are used by the disabled platforms.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Reviewed-by: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
>  drivers/media/platform/qcom/iris/Makefile     |  5 +----
>  drivers/media/platform/qcom/iris/iris_probe.c |  2 --
>  drivers/media/platform/qcom/venus/core.c      |  6 ++++++
>  drivers/media/platform/qcom/venus/core.h      | 11 +++++++++++
>  4 files changed, 18 insertions(+), 6 deletions(-)
> 

Reviewed-by: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>

Thanks,
Dikshita

