Return-Path: <devicetree+bounces-277182-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cB3rLAiXumnSXgIAu9opvQ
	(envelope-from <devicetree+bounces-277182-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 13:14:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 639C02BB4B6
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 13:14:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 75C40304E807
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 12:11:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB84F3D525B;
	Wed, 18 Mar 2026 12:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="B6uoMOiA";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bxJLUnb1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 908293D3CF8
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 12:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773835914; cv=none; b=DOt3n3r0JvvQjJybAYAWpxCUXQqmxLIOrxcDod3aVz1EdXlSlYJwEv2CSI7DpqFRHhBTK5EtO/CEv+SWocGqUZrrJZLabVnBDEYCpL87B6tNsIljFA8EdE+S+awgaWer3rdjgkxrnDynMkGF/CmdyHbDLS/L9bJenvQKURVHVAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773835914; c=relaxed/simple;
	bh=7JVSjoOtiQSK/DECL6RBLppzIV3OkjbLmIX8urcjhjI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=L8UR9AzRW4XdO7517VrLuMXhfJrJn5cW8JIAeDmBoP4EltmbB33YNvzqLEK7QSUnfAQoTlIP0M42rvxvtuTvg2UriD3Q8mJiNi8CJx8aMIeFdIdYb/gNwH6LtaM9glAyKLpbK5lxEDbMBiuT4qdxoVGR5VfzpxR6PEoq4xSzSuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=B6uoMOiA; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bxJLUnb1; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62IAikji009627
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 12:11:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ngvBrWAIfRBCiYX+5hVtvaKYw/3muQ2zZpexIV767xA=; b=B6uoMOiAThFe4Hh2
	hpi9zx4i24R9TWM8FGLxcbz8HoEVdbkxvrEIzNJsqgXyrzhTCTyXyMf3jDiTXlmm
	lJGWZwjNDHDXDre3bCxFp9CgKQkUOEMJxUQJKirShb9j50NS0CnRrIzcmD6igjbu
	6sctH1upSmHzG1HMFDxRvR8Ub3YN5UCocY/+WGNCAPDcYvfIqtvnfYHfoQj4h+TD
	vDzmPyoGgKP1enMyJmHv1AvM1z/lvmoh1Kx7vUBd4CS7woZ+cHuiKRUFfHSAsb53
	Pbczgig1Udqff/F3ULLVrpcHb0p/8PU8SuUVZth+/h9eIWuf1xiU4KzpHxQQqOGU
	XD7vPQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cytj5092x-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 12:11:52 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-50923dc39f4so48226991cf.3
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 05:11:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773835912; x=1774440712; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ngvBrWAIfRBCiYX+5hVtvaKYw/3muQ2zZpexIV767xA=;
        b=bxJLUnb1SyEL2oMUi3igP57abEFtaLX6kGUKNt0qsiZq5eQ+SbG9XEr19WCmrXDBla
         j3sJULtTdKAK15d+mLP8CLXTUwUED/JNaD1AR6c21J+WQMrJaKcR8Q+zZ2P6ciWz70ju
         ffoPFp8jdqpMQA9kiqXlNUHTFGxzd/jOLtBIyJtbw/PQGHLtOCB1Y40vtTuDbuQNth+I
         +BCrs9+uFzzExXJcdHfgHLvMf8j/izttzHEphBqZ3bI4YxYW6y7Z0Dxe1NP0bL1b3GKv
         nEo3ZVBhv4jtRHg8pXQYwSXiL1MPgk/V4o2waBZzfCxlOoFxjy6MeOq/+Q1RUKmPmKR9
         20Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773835912; x=1774440712;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ngvBrWAIfRBCiYX+5hVtvaKYw/3muQ2zZpexIV767xA=;
        b=VtInx9OoBGSP/7XMV+UGeKvJErAx11m/5vUVHrlJyVmr5+JGJdKKi2SI45uhlS/D/b
         OItxXyT+KEni9EymeQv2CXIFdyic2cZnbzixGkBnDADP9YX5Qsc6znXfeZhMkR8oyaP7
         gim/oLfFr9cUshbnsru5fYwEF8trRJezV2mI2iymYdwHAO5zP8v72a01fgKZSEUY6IOY
         RiXHkS8YKiwtKbAqKKabSec1rAeEl1cut2PyCaw9xb6KtrFzJ6qVjmjrnkrEMRpqlUM1
         O4chg0Ibqm4puh1x6guyQRf97r47xlLcgnMyjUkhFXPxWrntCaf2WC3aAfi95wRdMn11
         pYag==
X-Forwarded-Encrypted: i=1; AJvYcCUo7M1bh0St0BFe+LGLztx0s82AdCk4t32/A/b9VruLuSGOvX3GSOe3gu36vggDjhEM/+1OO1MiU8k5@vger.kernel.org
X-Gm-Message-State: AOJu0YxUOROhyxGRY0ydR8FGcauqHwmt7tLvGp7SzolEIXkevN1K6r7k
	+tIQCyib6J5AYlul5ioLLugazW58bqV6JhWtEte1nxceZAAmtzRw8wEGNeOi2pJPfnEUDxm8PUc
	TSCfD2LXcclIEGfwC4ldAkLWpN4CyHXymm+t2MRJImUU6sMNYuo8cjI3kkix7ZPll
X-Gm-Gg: ATEYQzyH3dEUC+di3LFFCWZCC0ZuA5R9bSuSsdbghU0Vk0FRgjFp3qAxJOwJCSTuQA1
	KfoImpnXjKHT5moY9B+qc6gf/kpVZmx/MqiLFTq/JlnYxZh/1wtUyj4fU9CbjntMg8JKNkbEF6Y
	JuvHdKHRmhF7m5cvDzQAhikrn38G1wbB0R9knLyIbt8hIZMdCwAIdTYUdI8cQOFwiZSbzOtx42l
	olACfepSeMMkMTAYrXQedi+NB0f/v1Fb1A1PctDtUN+kmCHxK04EwrgXnjBckTtZ3AIuWSs8s5S
	xGnfKdj5ZrXWH+H78etoVOzue/CBTkkInTWD8ucZd/tWfw74Z+QJjr0PusRZrQN2S3f0orZu8hu
	oV4nUOggvODIo4035jcAV4zVBEtvHo/Wg6FtJngtKQY21ml+EpJsB/aY/r7EDo3VND5IZpdGctk
	DyYwc=
X-Received: by 2002:a05:622a:44e:b0:509:911:3273 with SMTP id d75a77b69052e-50b148b071fmr25254311cf.6.1773835911785;
        Wed, 18 Mar 2026 05:11:51 -0700 (PDT)
X-Received: by 2002:a05:622a:44e:b0:509:911:3273 with SMTP id d75a77b69052e-50b148b071fmr25253851cf.6.1773835911170;
        Wed, 18 Mar 2026 05:11:51 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b97f16868cesm189946366b.33.2026.03.18.05.11.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2026 05:11:50 -0700 (PDT)
Message-ID: <5aed6399-fa0f-4a18-a088-746d01b463ef@oss.qualcomm.com>
Date: Wed, 18 Mar 2026 13:11:48 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] arm64: dts: qcom: qcm6490-fairphone-fp5: Add front
 camera support
To: Luca Weiss <luca.weiss@fairphone.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260313-fp5-s5kjn1-v1-0-fa4f1c727318@fairphone.com>
 <20260313-fp5-s5kjn1-v1-2-fa4f1c727318@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260313-fp5-s5kjn1-v1-2-fa4f1c727318@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDEwMyBTYWx0ZWRfXyEUurgfNuvDF
 txBPFaz0crjnSnBKBJ/Qq3Ud/54R+9WL5cfG5ygWAcxB8qHgPhzVOszPE/5usBh7baSiLrRoPCf
 oJ8hhZ6RAi13P3oJqCx08O6vSwO0O26YlKTzFxLl4clR1liQu+fF9d3pWtInbHe6CnBp3pUwlLM
 QowDkTq61LGpID+xXJwb35etzfe6UkMgO4oW+Hg3hkWK1SbGC97vaXTZHpIo+QzUhK3ihZwmZJ+
 UUsC+tJLFhjJjk4gOHOfb2TrIP+gv0walPmiUKEfcdipUeVJAiLZSjhAmICpfX8IJL0/qBodBJg
 4LZBIdmzQqQhpKD1ebFX/OXGGuPacgXPXIrbeEJhM4DqPYRcWVLfFpa9Uc2FjRlCqZtE1KtEWEV
 aPhl8CUwyUu4ugag6se1DkMLd205UDZJ+XP41RwNAUj7Kdas9bc3JZPm8ErnWMl4d4RZgRsypmS
 faUZsfxMCH/iAZbmzuQ==
X-Proofpoint-ORIG-GUID: 3zgFo9y4JEVxYGQvhAXIbWZldDbT9BBA
X-Proofpoint-GUID: 3zgFo9y4JEVxYGQvhAXIbWZldDbT9BBA
X-Authority-Analysis: v=2.4 cv=dM+rWeZb c=1 sm=1 tr=0 ts=69ba9688 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8 a=tpqq6vtDi3-i3S22qn8A:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-18_01,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 adultscore=0 clxscore=1015 priorityscore=1501
 phishscore=0 impostorscore=0 bulkscore=0 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603180103
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277182-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email,fairphone.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 639C02BB4B6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/13/26 5:00 PM, Luca Weiss wrote:
> Add and configure the necessary nodes to enable the front camera
> (Samsung S5KJN1), connected to CSIPHY 3.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

[...]

> +	cam_mclk3_default: cam-mclk3-default-state {
> +		pins = "gpio67";
> +		function = "cam_mclk";
> +		drive-strength = <2>;
> +		bias-disable;
> +	};

-> soc dtsi

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

