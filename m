Return-Path: <devicetree+bounces-266041-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aBCRBYozlGlAAgIAu9opvQ
	(envelope-from <devicetree+bounces-266041-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 10:23:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A4DEA14A564
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 10:23:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E2C6D3007502
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 09:23:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2A58303A12;
	Tue, 17 Feb 2026 09:23:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nZZXb+Qj";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="F7DUKmtt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A8A73043A4
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 09:23:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771320198; cv=none; b=GRmwTiTHHbsJxbsGpa8MqtqL9DNba2/fUbpORFOEkP80w65G3O+IqSDCFzzpGnGlg/R9ysfqHVoRW/DkKkx0/AId/qi+sZa20iUup9Q8kb/RpNblbkSj8m71nEH3s0jCpDhFrRAOSbq2lXJ8HcmSdnRZ+XdUipW/VeEXE0EnQVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771320198; c=relaxed/simple;
	bh=kguMa6ojH8fV8i3bX6X84bdeoSQ4omG4IY566N8i8eQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mLvgsNmIxpFacFw4G883q1Igq8iEYMIE2foJ2jPxWSwfb1ahWkG16nBSLkvs218C7Q3jDcp4drXR+OmK+3GIOd2zKlBzHmfh15eQafifGaZ7obuKbIQNxl5Z5AVYID1AAMCu5wJoOW+YPwWTcicLWhPf5kVqX5/Wea1gDREIQDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nZZXb+Qj; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=F7DUKmtt; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61GK269U2803225
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 09:23:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cAcb0cn1LyMCnzswasDtmZbw0woGumseJLOx2dhYcmI=; b=nZZXb+Qjc3OAKGAa
	NJDtV2Zkg7yGm6D4YAp8Z8em91O9FRCIgTcT0R+JrJhVi207jtupWtmJuWSzoUv2
	qi2MhAZ4m0zHcsaAxe4654PI/wtq1/AeVthNSxDBo+r5BIJ5z+FRMx5iS59TqJZq
	OAL4VRMLqmrYR1dLR0K5OmnS+ssQ3rOLmZKorI0a6C4EA+NZEvs7BMvp4ksRIWXF
	ZzHNp50XJHVkzKoMr/DMNF9qw1Xymb1Gzirhxt7RHHW7MSTIWVUmlIyeu4yVAcbC
	uXfaO+V218bdeR9hf72n6d4I1hK8aCv7ic65OG4HkYjAI1BKr8IJbu4A3AAJtH9S
	Yk/0Vw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cbyxujvau-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 09:23:16 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-50698374e33so38660631cf.0
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 01:23:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771320196; x=1771924996; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cAcb0cn1LyMCnzswasDtmZbw0woGumseJLOx2dhYcmI=;
        b=F7DUKmttP1RiueK3rBTactjdfyvF7D/XQwnYxflqX/tb9zMxv9zqUfQdW6HDImiZKt
         MrZq5AYprENm5VSz+kO3XYrS4fLUL18wfwDCS5gQy5B9tJzfi+hgxPgWQN2I4SOegZTp
         QngnUQpeTMz0B3n3FiiF8sot7Bl1259lzavaNrj03chzGQ5ISaFn9hG34CK9mSmx/VE1
         boKnIFbM6b7kmji7U9emjtRAEO+t+E7+W/9f0VUeq1FT0YWgGDehhFraYV2VZmKkQbdK
         93keMa3w3XJxpbijiCETqtE5dMnAhoV6Smgr1TQMf1JFs+uuiE9Zc8K69bnX0XSDE5Ks
         zxWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771320196; x=1771924996;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cAcb0cn1LyMCnzswasDtmZbw0woGumseJLOx2dhYcmI=;
        b=HD73KW1IxKyKGv52bZ+k4AS/Omrlr/FBQM4jF2aEDcBc89TqCJMHUf+t3bd85Mb+ej
         Ogd49OEG8p3cFVS7FUav7EsUPivnZEBjA5kwtJbPhaZyN88Cp4h51QqDCx5AqWasVkIs
         lvkkt+SpvT9RmRedQYkYNwukfYeK2JKoRwpBlcIdoXQagrPrW/bB87NvQ6fKf6lDx5F7
         DAi/qk50M4KRKdhkS7KSWu/qy7pWzpOvN84iAMbbEbAi/NpThuGjffEetfJ+LKfm+rYY
         jMtQ33rAzvurq3R5gOeTeJw1iz0dU80ZrnV4teFaWfc3D0RvRqyrHpLxgbxZpGpTzIRA
         TIBg==
X-Forwarded-Encrypted: i=1; AJvYcCVANG/U6emFWjjsSW3jS9jkoFOIPgzGDu8WX8aNh1bIXes9Sg8FeipPk3vxj2g62SC8YsxDcLXUQtlZ@vger.kernel.org
X-Gm-Message-State: AOJu0YwSuo5WYC7FfYuU322O1w5glVa7a4lTs/VaueWs8VRgzwlI6arU
	GHve1bKJ1BUMvVNivX0NczA7XmdoUhfJBGTGTcAhBXehiAIU6FGvSKc8zDmPaYL72Cp7yNkfAZd
	g6DFll5q/+zSa7Cd4n15u8ovaF/jbHJhFLG3tqzYRV7Dh3/wVlXD7tDfVS399qwpJ
X-Gm-Gg: AZuq6aIv+6O3JaxvyaoqrTpQFyxOxznBz8os4tTzPHBgbSIjSXIAdOyvtIV0gCTFNF7
	kvTte+K8xZgCGucRzAQ3M2XRkNwpiW7XjlWoFNRhL4ws14GcVNmP+eeRqLbnbJOw4BMR/fG6GLP
	JJLuhTB0o4gbL2TqS2HXwLXBT3hBHl+ZWPi1nvQgUOWnE3n6igOZdG8CbJ1akwMCyznpfKkhmgC
	a5QWBUg0tt2Zx6oE2mCMfkea7xzUgP5k8uV1kvhPWaADjrmiazYhkDvViizyhf3QQxTcPhm/Yoa
	YY/ihksem2qiVVTBZYbQG2/Z7RbahcCWRsemPCMUzj68Q3spyPE7dU1EiiKiTmHY+AGout1mQtg
	ERfnD0f1b4Lda/AuxcSGv2atMIAaipMTBKzQmr326kanxqGVpgtWPs2z6mvxIJDcBHl0cvYMHeo
	RfQ2Y=
X-Received: by 2002:a05:622a:130d:b0:4ed:6862:cdd0 with SMTP id d75a77b69052e-506a6b2acc8mr137303591cf.10.1771320195935;
        Tue, 17 Feb 2026 01:23:15 -0800 (PST)
X-Received: by 2002:a05:622a:130d:b0:4ed:6862:cdd0 with SMTP id d75a77b69052e-506a6b2acc8mr137303451cf.10.1771320195568;
        Tue, 17 Feb 2026 01:23:15 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65bad29d4basm2250214a12.12.2026.02.17.01.23.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Feb 2026 01:23:15 -0800 (PST)
Message-ID: <462fb38b-a830-4c9c-9b6e-3f90a388cf97@oss.qualcomm.com>
Date: Tue, 17 Feb 2026 10:23:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/6] arm64: dts: qcom: sm6125: Add missing MDSS core reset
To: Val Packett <val@packett.cool>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, phone-devel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260216233600.13098-2-val@packett.cool>
 <20260216233600.13098-8-val@packett.cool>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260216233600.13098-8-val@packett.cool>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: Dqtru-KBYhHe5Rz5uVztfX4kpuhW8PgZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDA3NyBTYWx0ZWRfX47fCVcZeJsqF
 TJBLmB99mvo2brCgPP41f0nAgujBd4r2rkEnxSouaX0sqL+oa7ycrahL7WM9YXAQLo8KA2Q52pi
 fUv0/x356UZ9DxJS/V8fIL/IsqJFy7Wm/2iFM7F458JY2jGUo503V5+9L3xGDiqnXUrPH74dVe/
 9XqSdwkboCAQ+eAuksbVn3OV5bPbACy7F04rvpvLtT+AiG+PF2seSdVMFp1cTc3lc4udrCakauK
 WFFp7OYtW3S9yWldX0CuKR0gMHfc5awzy6OM58Pgtv/W1VLdkHEQkhs6QLwTaZTsIYxsiRXYPrg
 RD4J1t76iqqschDV23CAy6Miz47RRRXZtSMYXKFRH4/Kt77YwbGUxjLgkRByCsuhYrt5bzEteFv
 yLX19fTQWEplshagPIRicmqUHkUC2+7B8V9whMlmWYVqYNCWZPVzdRGml1xddQBEOCSFBFisFs1
 4dr9HiL10V0R2CRuVFQ==
X-Authority-Analysis: v=2.4 cv=BpuQAIX5 c=1 sm=1 tr=0 ts=69943384 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=xTuMNDBKoo2s9YD98OgA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: Dqtru-KBYhHe5Rz5uVztfX4kpuhW8PgZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 adultscore=0 clxscore=1015 phishscore=0
 lowpriorityscore=0 suspectscore=0 spamscore=0 malwarescore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602170077
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266041-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[packett.cool:email,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: A4DEA14A564
X-Rspamd-Action: no action

On 2/17/26 12:25 AM, Val Packett wrote:
> To make sure the display subsystem starts in a predictable state, we
> need to reset it. On closely related SoC (sm6115) this has caused
> DSI displays to not work.
> 
> Wire up the reset to fix.
> 
> Fixes: 0865d23a0226 ("arm64: dts: qcom: sm6125: Add display hardware nodes")
> Signed-off-by: Val Packett <val@packett.cool>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

