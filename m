Return-Path: <devicetree+bounces-260238-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sE/bAZvJeWkezgEAu9opvQ
	(envelope-from <devicetree+bounces-260238-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 09:32:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 880DD9E3B5
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 09:32:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 95674300D95F
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 08:32:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0703313E01;
	Wed, 28 Jan 2026 08:32:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cWaVyEO8";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WM6vlmfV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3864E28750A
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 08:32:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769589138; cv=none; b=oC/aeycTg0s8DS0fYRQ1ua4V6jrz4ZlGaHOCTOBuNHAnLKi9ofYS1E8nCwtpa8lcVv06CQS367FjIzq7M/O7h5Uoua53lDgUP2pN0br5fSCVTQxZWQN+/oVe6GdJwRVL65kz+sTphwpig3VlTkBufw7NhbkzkWJBnMt495Dqpeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769589138; c=relaxed/simple;
	bh=nywUXIMprx9MAJUPfvNjXqbhW1zpff6E1pSWT3WavHA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VcT+e68QsaUzpgazTSVtOczJUTBrfpVeHkTVt5it212uh7Tc+HP3zccWWi3iJy7xvXguGCpEk7oX3+F4y2+rHfOoUXJxxP1NoqAmiJu3YpeAunYAOPA2o1nuWQq7Qi5MrMqsJQUczXRu53nmvdFUwnC3ikM7M7C2dtkBYu1FBW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cWaVyEO8; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WM6vlmfV; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60S53l0r3353022
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 08:32:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=1pXepWuCv+MAUrWi/jOZaSaG
	vZ0UYWr1PDjYa8i71Ps=; b=cWaVyEO8kwucF9pRUNxNZTWXeVwdxjMrMSwIbHxw
	rEU8JIc3bcNcru1I7Qz1/Hxc+cfwOVyErUJXpwHZGAQvuaXObEvtSm7NK7eQ8Knu
	sU/RToVOa6eyFegIf/fgJzVDdyjdXzZtC+ROGWKiRIyRwm92+v6qo1R2y9dU2o1n
	uhGDTZdVAArbpgz4dNi58hSpCTSq8Cv/8AIIkJdUyapyH+IRUUzRFvNB6cRF1ew8
	kOydvyQV9OyWbgar7ycL3WajesIXLdY1u5445YlT4QopN/Pjehqc88PwWQiMQENQ
	J34kFUMT8KozGQQSpmmezKPVjZZ3xc2xCdtrJKJQBXfYWg==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bybyv0m1g-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 08:32:15 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-894709fbae5so217598746d6.2
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 00:32:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769589135; x=1770193935; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1pXepWuCv+MAUrWi/jOZaSaGvZ0UYWr1PDjYa8i71Ps=;
        b=WM6vlmfVs1wZHkrQHZOp9Z/HDX3H1Prw9SzmPutBBiqWeNoZYEH+BP9UMUCAmup5A2
         HB7RAfItK8l5rWGBYetQXV1onfYeus5CsXNGeUhqUZJgKpl+oyHYQdaUmzBRvmWvmWE2
         7kqPKwJdRgfIkE6jKAGjUbwYIIjHulM6BSs/gBlgw7mG2X+iV52qarJWIzB7l09l+0JT
         J7u61eV6vzys92h+dUuSeqBqp9AIucKLt5CerqQQ0HtFm1DTncBfhOczc6dILIYzIWub
         PLvqlaLeVxfSVeMeLxaJzVMiVEmVIGJZtRv93KTH48EACiYjeb88G2pXW440iTJKyuF8
         kIMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769589135; x=1770193935;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1pXepWuCv+MAUrWi/jOZaSaGvZ0UYWr1PDjYa8i71Ps=;
        b=oOh0gTkYZM8BwBQNfc9m6UMGSwdDpoAe1MDdeTRerxog8e/0KOGpICaHKdDaasaeeC
         HfcP9n1TR5oZXL6PRmqpX+MNH4Hj+uvoOQaiSBuGYUw+ootj6wpA5qf86wVxK/wSXpnl
         1B3WnVI4TWKEDMhwlCCe2lj2S4YzDkCxG87tz0qeORPMOvuzSxcCwjv5Lsi83SI4TIxS
         tM9KWaQ1vo2AVXWc8uPDivWfRXPRIBotazD94Bb6e/r7Aib1yrPhObPLvEmG2ASsyg8Y
         eKMCtkuZ+aoYSK9Ga9x91ShCmOZ7X8umHlFxCH94tN6zggLMmikPVEiTpMVmk4m3f4bY
         s6xw==
X-Forwarded-Encrypted: i=1; AJvYcCWCCrtm0FJmaBj/b2vOn1ERrpC2+JeFTq1SU3/8zwcxwJtqOBUH0Xt9Mt1+0baT/Wn8ufcwTq12vWfO@vger.kernel.org
X-Gm-Message-State: AOJu0YyWjuk8l+Me7TilqDh46abeNYrs4P0djyOLUXHEtX+7PSVSEnY3
	c8SnPPmcszySujcREv00y+MCRCHw+ZZOlwDBIX8mBf3cv4cAYERikxejM40JinsXIpya3OEv00I
	w+vV6WkI/7gaGyzdR56U6GY3fISHft1CndeY6O8UMSk3RXzMUEvunYAArJXIbprtj
X-Gm-Gg: AZuq6aKQuV3fWZzSMoRviE1J+1PYruejVTlf5ituvo9SGeIewea/yQxHXUrb1I8F86X
	0ktN2f5FS2zZwE42a2JfscvfOx60Q9ZIjo2xnTjs7z2xiElLtw3AIlbzJDz0GTb8aFhUeTRyVsv
	ds6rAFnuft1pcqnAK7UUR5fNUnYr4am3XXmF+O/hIamrBNmyJNAzQVf5iShVnTwdmjfhNOLD4bg
	fYAFmnt+KVSl3RgyGJeqVW34iq9V3ruU1FJ8sjc3XeN0Su3TDcQj6LmeYarmSMpnntFkrBGeg8J
	q8rMi2Mk8AZDm2j+FMsFmS+qFzvvqDVa05zyfOSfL2lmq0tT7BX9wrhzDMLtlE9evb3qM6ip/lo
	fXBnI9ooFVWls4lI4n+lOovfd
X-Received: by 2002:a05:620a:223:b0:8c7:1118:c514 with SMTP id af79cd13be357-8c71118c91cmr277971485a.17.1769589134854;
        Wed, 28 Jan 2026 00:32:14 -0800 (PST)
X-Received: by 2002:a05:620a:223:b0:8c7:1118:c514 with SMTP id af79cd13be357-8c71118c91cmr277969085a.17.1769589134390;
        Wed, 28 Jan 2026 00:32:14 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e131ce93sm4991486f8f.24.2026.01.28.00.32.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 00:32:13 -0800 (PST)
Date: Wed, 28 Jan 2026 10:32:12 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        20260114-knp-remoteproc-v4-0-fcf0b04d01af@oss.qualcomm.com,
        Taniya Das <taniya.das@oss.qualcomm.com>
Subject: Re: [PATCH v4 10/10] arm64: defconfig: Enable Kaanapali clock
 controllers
Message-ID: <dxgdoauzfbet45dayic6vmjyh3hu6vdnyccerb42oqorijme55@5ywf65y7ulwo>
References: <20260127-knp-dts-misc-v4-0-02723207a450@oss.qualcomm.com>
 <20260127-knp-dts-misc-v4-10-02723207a450@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260127-knp-dts-misc-v4-10-02723207a450@oss.qualcomm.com>
X-Proofpoint-GUID: CsjpI-dopck81Oyk5U6zOwki4w_omCg9
X-Authority-Analysis: v=2.4 cv=ZZ4Q98VA c=1 sm=1 tr=0 ts=6979c98f cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=kj9zAlcOel0A:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=hHfo9KWc5dFt2d3eTEEA:9
 a=CjuIK1q_8ugA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI4MDA2OCBTYWx0ZWRfX/pAcOj1Bub4l
 V86MVuWT1x21bORCh+Rw0/2ooBTM+WdZQfXRQBoGYq4g+sPfo1gtiTSCSgeoD4LNQ/NPtA+f8Cc
 nJEcoreYNgZ7SvfVwmRpWRJ+V7GlqF/1DZEysRpselUxukhDcI1xjfDvfKEK8VgNbw+dq5ld1oo
 HDqPBM5mZ1LzpcxNclnNWDzWJKB2dDkkxmz2aQ5EhnIBd/WxruHs3G/ntjTFx4l4LVJsi0ljkhv
 Sfs1UC3BeAxCsla1WD4NoyGnSSPTJIESYUpRX97yRzaKlB/7f4WgW7a9IW5WbJ9Q9HrSUHXm93p
 nHiLBCbd8SMIY84I0Y5RsK4ZH4H0/COG7y+kg0g9wK/zKmiyl8Z3AAorGaKsGQi597ypGogPu4O
 yBd0C//UVawWN3qp+pR0zxY0VG9nha6vthoiDOcV/GCgRJCMRVQX2NlM/VIxsFYD61A+HRcR8sJ
 dwgVNAEpJ1Sde2D1NPQ==
X-Proofpoint-ORIG-GUID: CsjpI-dopck81Oyk5U6zOwki4w_omCg9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_01,2026-01-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 adultscore=0 lowpriorityscore=0 malwarescore=0
 clxscore=1015 impostorscore=0 suspectscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601280068
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-260238-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abel.vesa@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 880DD9E3B5
X-Rspamd-Action: no action

On 26-01-27 00:34:07, Jingyi Wang wrote:
> From: Taniya Das <taniya.das@oss.qualcomm.com>
> 
> Enable the Kaanapali display, video, camera and gpu clock controller
> for their respective functionalities on the Qualcomm Kaanapali QRD and
> MTP boards.
> 
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

