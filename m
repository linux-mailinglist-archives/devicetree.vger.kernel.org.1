Return-Path: <devicetree+bounces-262067-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gMzQCiiRgWl/HAMAu9opvQ
	(envelope-from <devicetree+bounces-262067-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 07:09:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BC7BBD50A0
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 07:09:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id AF6C1300DECF
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 06:07:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD8F336F42D;
	Tue,  3 Feb 2026 06:07:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NH3ch3LT";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="P6D/aYpC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D93B3570C1
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 06:07:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770098823; cv=none; b=HxsR9HFNiG1AKJ7yKL//TVnLBqBH2SWH4tF2jh1SHfUXG7bTblzo0O2gL2kG+Y8YPHzjI37FgLsVMNWIZjbU3WEk8vy0pzK2JNBMT9uQGStafNC1ABT9HwjPqtUifdGhwfL3KvNawK9f0LNiqYxLKRC+u/Mof1RxZxgMeSacfFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770098823; c=relaxed/simple;
	bh=erHL8f/aaN4id5lgI9hU8RafEKVtAOlbnP6wP/RzFpg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GNDfP2b8Oh4C6b9Maz8ZS/cvSuFUxOPSoMjdACj99XSMBMzV6ZpAjDEPkYEpUPG65l9fP6wHrN4qAbG/iyAMlA6eQX9py0yTCRPJdr53L75QtbS2ps0O0kiMqKl05eeTHiP9dPXC7FSRsHl+NRD+sOlepoP/qxZG5RY4KdbC5NQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NH3ch3LT; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=P6D/aYpC; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6135UgHL3459099
	for <devicetree@vger.kernel.org>; Tue, 3 Feb 2026 06:07:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	saofCR2wOrfTSuGcu8Y8tst1FZMcVjZ2txa9rsTCO8w=; b=NH3ch3LTQpP2UgbF
	3wkM32sP+/UB72YPxjG2HhISooZnhzAk5Id3rXID3yEkIwlNONKCsfn3Rs1UbDUt
	hNNOLRvYYL3HSJMcKDXfQWGhOcTdbxkfNKgBPQYo/LdJVZIHuaFsBxtrvC8GZxig
	KbOH4BOSmBXKXoU+7V++O1xvapHkOYLumdEcbT7fnHrHuF0etDTSl1s9C85SlfmZ
	NLe1XbDEQiCEQvBn49GVmUgbwcWaOPip4V8FzPlwPU0zr2dMK1Syv4m6ows6c46+
	oPCldjUwkDNEnKJHd3cpTJ8iM0kfh004vaMogYQ6Wwl1+gUXoidxdCPyY6a1dJnO
	uy3ilA==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c2trbk336-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 06:07:00 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-81f5381d17dso4255215b3a.1
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 22:07:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770098819; x=1770703619; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=saofCR2wOrfTSuGcu8Y8tst1FZMcVjZ2txa9rsTCO8w=;
        b=P6D/aYpCiM6U0WK8jBJ05Vj16DQ6SIR0CqRq83US2Al4moH4h2hFMNeWibhvbaWXLY
         ouc+XBO3cnCLPgoOIV7UFUHHUG8DnRC9bbhlagIH431mSOpSL8GWbBNcItj9CdhGxC/p
         5D6A8b8kwfGSo0HL6FN7rkTrweACl5dq3NJXF37OXjWu0sxAeo90TNWOXS33MRtoa17b
         CTTveXWqdqvpSOQ6MIVUPLk2FqtWP8wvEGDQk7FEi4TROCWXxWIYzSPmrKIGiAF3IFM8
         QKEYEu/2ZxX6+MncLVYtwlXG16xHLWz4ILUO6ks9ZzJvZxIJudLSQZoFBedAj++CAW0k
         l9hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770098819; x=1770703619;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=saofCR2wOrfTSuGcu8Y8tst1FZMcVjZ2txa9rsTCO8w=;
        b=WORzVB13OviQ/FvtFdeQZQiQCOn4dBZHFapXinJgMrI30Y0kAwTs7oepvZ4P6MW0XY
         PEa2OPCjRgyUnnZPLEzvMo+UFFZUFP4ezkFah2LSEPXwiWdTV1o+gAgO1mPwiqMoJXaF
         pacA5UaW8K0KshE+kQvuT+DMVEfCS3OsC3k3UsuaFTPf3500GRGrass12rRGqTGNSGFJ
         wTenUypF1PAlioW6dXTS3UmLexqlGU9PJI7oQ19lnVY8cknLqztU/OnXK7HQEoor9N5F
         BwdfX3YeYYY+Ap158rcYCbCNvEdd6dO6ujYHs26S5CIOn/c8FjvNkHYxCg5eG2sxc9/y
         l6TA==
X-Forwarded-Encrypted: i=1; AJvYcCWgNCoWurrOQEbbqgFECuK7HBQWuZcXa5WOMEovPbFs43UQYwXjp7rBhXRYK9L96PPKQaCh0bSArSGO@vger.kernel.org
X-Gm-Message-State: AOJu0YybzJdpp5OeJFYJrorqMKBuSVLGTVrv17sGNWtUHa2eSvgzwIwu
	9B7mZcnlK0FSKTsbEP/+vof2u/Eg0SmRQA7TnvXpMKXyn4v5Zf22SZjVAvUARITMBms3BmuQdLg
	21M4y3y22q6k15YwRdDKxrRkyMgE5OqDpIFCY5wP+ceOImpwDH7ibF7N73v2VArSc
X-Gm-Gg: AZuq6aLlC3K8rt1lscBR211nU+Zq47P3hDj3gDQpTU+YDfHDijj+LYZqb+PlKvDv5oV
	djoFwIvxJz9B8VOvvtnnszJp39w++EdVQebqIAiAjlMiA7vO9bk+oufWtyYSzJBK3wGXMYdjBCw
	JgqXvg5dqChjPoKSf63HWP+llK1DCDckI9mf7DK5RahgDfmuvCrXLkh0+ChHXOfOAe3cDxz6Cc7
	nTuSnoMbgGhmRCcNyd5I8SERxKYp64Tft+O9dEnrzzUYnijallXf8vEH0VpJ8k9iaCBX9K0f8sf
	5c/7KjUmasjQxVCw0yiajl8EEZRE5pgKWDjOlOpt57k9kv5i23lim2JFnTeQhmKl/5G2g+3B5Vp
	fOLjkZjGm/+svz/pRZNvFnaJlH458NaZvbptN/XMNkYDI
X-Received: by 2002:a05:6a00:1c90:b0:81f:4769:6fed with SMTP id d2e1a72fcca58-823ab683d84mr13755130b3a.29.1770098819330;
        Mon, 02 Feb 2026 22:06:59 -0800 (PST)
X-Received: by 2002:a05:6a00:1c90:b0:81f:4769:6fed with SMTP id d2e1a72fcca58-823ab683d84mr13755102b3a.29.1770098818821;
        Mon, 02 Feb 2026 22:06:58 -0800 (PST)
Received: from [10.206.109.90] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82379b4873fsm16185110b3a.18.2026.02.02.22.06.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Feb 2026 22:06:58 -0800 (PST)
Message-ID: <785406b8-0218-a937-eb90-10b7a5f7796a@oss.qualcomm.com>
Date: Tue, 3 Feb 2026 11:36:51 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v4 4/5] media: qcom: iris: increase H265D_MAX_SLICE to fix
 H.265 decoding on SC7280
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
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20260131-venus-iris-flip-switch-v4-0-e10b886771e1@oss.qualcomm.com>
 <20260131-venus-iris-flip-switch-v4-4-e10b886771e1@oss.qualcomm.com>
Content-Language: en-US
From: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>
In-Reply-To: <20260131-venus-iris-flip-switch-v4-4-e10b886771e1@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: tkZ762ssVuxIchO7s2P_-7ctYK3YpI_q
X-Authority-Analysis: v=2.4 cv=dcmNHHXe c=1 sm=1 tr=0 ts=69819084 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=jz17cmUFc4N99GX7AB4A:9
 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-GUID: tkZ762ssVuxIchO7s2P_-7ctYK3YpI_q
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAzMDA0NyBTYWx0ZWRfX9+1tJsG/YMhZ
 /O078ofLDC693E1fgYKBE08M+4dR0JUyuYJRIqjotk4UmE9QwtK1f2rKY6aRr2w7CrOMhHdapa0
 0UAP9a+GbZiG+S7hxNIic8ldNd0O3WeJtOVOlKw8om/crr2LBA6iSrL1KJjFDUZ076Mt0I2YSt1
 h44RWHEhb444oIOl4Rh0cUzpOfB5j5f3WyZjXzNRbtBbqpLx5WtN/X1uuMg8CLlPv62dVJU8nYk
 bMOXRsHbeXdNEuNajpXTq0/eCvqXgfcYqrSOXse3QLuwwaXZVKL6Bck3a5+YmMlMB5bEs0BSCwQ
 gNEvzusUYZXNVfIxIsj99G2L3qK+ASGoG1ku+7iz23iDbWA1B3os+stvxSBZGc8c2PLhgPrmm1o
 i30/23BiPR+HuZZ1XrMWpbsWeiHeG5zzhf4A01YX7ggpOXzlWoqpRxgzOH4fMXy0vbXu91ymRjz
 huj0CU7/hLN/OLU1QhA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_01,2026-02-02_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 impostorscore=0 lowpriorityscore=0 phishscore=0
 bulkscore=0 suspectscore=0 clxscore=1015 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602030047
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
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262067-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dikshita.agarwal@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: BC7BBD50A0
X-Rspamd-Action: no action



On 1/31/2026 7:28 PM, Dmitry Baryshkov wrote:
> Follow the commit bfe1326573ff ("venus: Fix for H265 decoding failure.")
> and increase H265D_MAX_SLICE following firmware requirements on that
> platform. Otherwise decoding of the H.265 streams fails withthe
> "insufficient scratch_1 buffer size" from the firmware.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
>  drivers/media/platform/qcom/iris/iris_vpu_buffer.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/media/platform/qcom/iris/iris_vpu_buffer.h b/drivers/media/platform/qcom/iris/iris_vpu_buffer.h
> index 12640eb5ed8c..8c0d6b7b5de8 100644
> --- a/drivers/media/platform/qcom/iris/iris_vpu_buffer.h
> +++ b/drivers/media/platform/qcom/iris/iris_vpu_buffer.h
> @@ -67,7 +67,7 @@ struct iris_inst;
>  #define SIZE_DOLBY_RPU_METADATA (41 * 1024)
>  #define H264_CABAC_HDR_RATIO_HD_TOT	1
>  #define H264_CABAC_RES_RATIO_HD_TOT	3
> -#define H265D_MAX_SLICE	1200
> +#define H265D_MAX_SLICE	3600
>  #define SIZE_H265D_HW_PIC_T SIZE_H264D_HW_PIC_T
>  #define H265_CABAC_HDR_RATIO_HD_TOT 2
>  #define H265_CABAC_RES_RATIO_HD_TOT 2
> 

Reviewed-by: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>

Thanks,
Dikshita

