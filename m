Return-Path: <devicetree+bounces-271022-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4HzOGrEsqGk/pQAAu9opvQ
	(envelope-from <devicetree+bounces-271022-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 13:59:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 89E6E1FFF2C
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 13:59:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 91C5B303A5C4
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 12:59:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 526E825A645;
	Wed,  4 Mar 2026 12:59:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="b4LYzdMD";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="EkSQP9/g"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F340E2248A8
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 12:59:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772629146; cv=none; b=iAsYW3pGRZANWrUdwZ5RNLR3M3VzKiBY9Og+/6DHEz5nzN9MzZN+t7DcpJVWqr9WTA8pqznfZbuJ2Kgq/RyJmt7D1w3LuUs/sTeQ33y1LjJDJEFef9ECTfG9YR+cPZSPTd1DB3KGvdAQ0vEiB9YIJccrWkfinlFd4qso0dPW3gQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772629146; c=relaxed/simple;
	bh=lue32kb97htDnzVq/E2GGEoAq2EwhaD55U9g6KnE23U=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Wf0O3BW8VfYuMKLb8MS6KeyDKISON+Y4IMTVODDBDmXMFAztgH3hJX+ngEDueSI7qjPylYAvxbwjXf8lGJtETX2kvNtCvKm5aF6KueHqeq5BTmbfmHBCJDfDU5voMWVyWQllZZW4JQiznoCSUgIWrTrXMJ97dnSMoDn5xp6vYEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=b4LYzdMD; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=EkSQP9/g; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6249smSE1213362
	for <devicetree@vger.kernel.org>; Wed, 4 Mar 2026 12:59:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OabsN2NmqUFGX8fMmH1AdpxTEOvN4YrgWGbMnRqiD3k=; b=b4LYzdMDq7KmK7JD
	mJ4uoD/4qP8HQBxIQAiiDYBkYpWxbWZjGm2BCZcnivv3WbhKsxz+xLCx4ziFVxCx
	WWIJqinBMjFsuuIJL7f3x3n+pdBelWhHoEeytl++QlYa2YJFzcnFdFDjI4EjU2rB
	qifXHkWC3xbuvFoXz3j+cAivodv7HM2G7EViFePAuhjVhzPBvnJMwtTi5YiDhOQs
	X5+qIYHoPINlEAS6eo5T90mSZ5qg7Ic3JIrsRyP6FxWriA1X3DQ5khDNI0EXGrat
	v4wZ0Z655i9XcaJOlEYVh92ecclBbsGdDlNi3bJaqiriNu3e3wUeSl79KWT4GpnA
	WlGwSQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cpjh5rgqj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 12:59:03 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb4d191ef1so879736885a.0
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 04:59:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772629143; x=1773233943; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OabsN2NmqUFGX8fMmH1AdpxTEOvN4YrgWGbMnRqiD3k=;
        b=EkSQP9/gQ2PF5knTCzaFvXQpp6FWXQJoch7yu2ahNSGlqXmgAUpJYEvyk8qWq3z2K8
         2O85RYJ2qQ4NusV27aoQShF82ij0UJ5+dl9jKcQHDfuOkwMOSjl+M8nqJBZVRkmTojV7
         ROfcvd1gARcG6nGUSSr+HCHxM9sibTBa6XChp///HjbNrjvGIXTGiHlXteUNffbDmS/H
         MxZ3JQykrMkH+F/IbB/X5dVQB7kLASdDEck9xXGuQgMVpayNh4VsrJPvXkBZO6J+X6Zh
         5XbJVneB0Zmz3stQC3++eU1WOxxVRuLAo3ns6DTcX9xJUeWQqozqWJHaI/Q91EsQHSuf
         h+6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772629143; x=1773233943;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=OabsN2NmqUFGX8fMmH1AdpxTEOvN4YrgWGbMnRqiD3k=;
        b=F62IExR5Gg0ASLhaEv5ZxVKdnR4viyVuxLs5FHulEPGr0LiCpjjmxDBCUx40ybY0pT
         RVVtzmBiBVkFqgDcPVqYNTg38gh6npnz8Jo/WBVjxm18gRDuQzIlUmwoIY9F+z5SQ7BI
         dskrRyRY7VJuMxvBizXQv4AMrLbuyIwylXpOh9w0gCH/XUzlkBWD11yiwrwg5+1qwvIn
         5b5GVFBd1mHo6JiSyHe3viZzb4fCJLUpZK/dhoYB09ak11BbUjf4hDpwgdhfovmls7Yh
         lA82d5FSU6/6QBe8+uwBvYIhhpx3WF3SYX+1W0qZlEq5ieDsmGDESmzdb614sO+j8Hiz
         My8A==
X-Forwarded-Encrypted: i=1; AJvYcCUdypHJlVI5GP+JqD5EF42JP/AWRlzz4OaU5KPoocxOdAjU8dOL0zOZifVsF2f4xkUGv5j0Nl2+fd+q@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3KgErQv33OY6FqPaLamb21XIyc6tR8wJ2KiMQ9fiZKySyamdi
	2sWQ9WcYCWXdsce/iyUb8lU44/FaD2B9Jn+QRfdgZkP4TPKKYQKsb//gWdLYyqVusM+dk20L8ev
	qTadaDXOyp5ezhRl8Npawg9QaC9KPmUy9+HLoboyY1F+N+TA/Z8mMNC+c66cnPpuw
X-Gm-Gg: ATEYQzyUGYxpdLQIaKhxpVmP1Q3OJuh5mEs7y9NU0PZ4RyM8XD3Z8WrmN07cgdxu1/o
	SFm8tLwB4uFdlDaGORjGLX71lO4gw538AORu/Rfv+iABnuw3G96lKm6cg1gycx//+LAECYRjVOt
	Qmvy1xEnjwZITBGmyG4+PsPwdJkyBT5o6swm1uuj8Twf7jdnCMZXRrCUSjz7B6GaCoeliD+7+mb
	ZaPlhEaQ0Q4fgh8sg14golcxu/fTePM4YqJA5DRbDF9REHJgb8Xi5P/vQIYwTt0tipLCPdnQ++t
	mR68wFqUpO4CuLeBocKJyLO0SN4Bby5GzGHvJQjwXmEFPko/j1EPQg9YmECcPyJi30UsmfUyoso
	izZXzBIXaM78yNAuAytpUx0g6sit6gZx4d32a7YPCWWRj
X-Received: by 2002:a05:620a:29d3:b0:8cb:391a:48b2 with SMTP id af79cd13be357-8cd5afd2c35mr207797285a.79.1772629143322;
        Wed, 04 Mar 2026 04:59:03 -0800 (PST)
X-Received: by 2002:a05:620a:29d3:b0:8cb:391a:48b2 with SMTP id af79cd13be357-8cd5afd2c35mr207794385a.79.1772629142835;
        Wed, 04 Mar 2026 04:59:02 -0800 (PST)
Received: from [127.0.1.1] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439c1fc577bsm11318491f8f.19.2026.03.04.04.59.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 04:59:02 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Wed, 04 Mar 2026 13:58:43 +0100
Subject: [PATCH v2 1/8] dt-bindings: display/msm: dp-controller: Add Eliza
 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260304-drm-display-eliza-v2-1-ea0579f62358@oss.qualcomm.com>
References: <20260304-drm-display-eliza-v2-0-ea0579f62358@oss.qualcomm.com>
In-Reply-To: <20260304-drm-display-eliza-v2-0-ea0579f62358@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Jonathan Marek <jonathan@marek.ca>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=996;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=lue32kb97htDnzVq/E2GGEoAq2EwhaD55U9g6KnE23U=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpqCyKmtS6NyRnvukSrpsNu7xFG1VLxuuviX8fp
 NgC9TXnwxeJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaagsigAKCRDBN2bmhouD
 1w2ZD/4oXikB0z5IXKcd3FNLyd+5LId0ySiS2OpckaW10MTDXDHLNrcEjyPd/CqUqz4SnJHgIuj
 NgaWL1K5DRTzeyw1sKsH+2tbFSR0rkkyeKAbQ/MEwojgfhAeNA2hR0MZXCGL5kGzrDZ+jd7HOPu
 6LJT7FViLYkeXyTKKgeY11jSwyU5PbxyEG6bDBdjjDFzufJpUaj+vtsZukfQn0qLcEmqVjBkzWs
 CBk8ICJjtJUdsYDoBHMygN88C5v42CZz/iQ22hpIcY9Y2KEK98hun3mi8+np+s/izYLkRA9yzUZ
 IfIRTse8ynQ/J6vTUfLoieSnnwnrd/yq+IUsTGubVSxjJ9kcTeFxXpGssBGpFiXRTkQZb+Mkumd
 AlchKqkZrJyhn0WsVVX8ebUUJX3VcDeUEkSu6AjEEeaDftc2osJTc4uvDkY1I/3A0exuh+wm41m
 tQRMu75hXNnUg/6s6SKes2kYI+SWRiSiLJEt1uQ5pSycbXsviiTrZMwBQLn/hvM+nNcgMwMOJUK
 QoVjQGkfLTAsQRKI41rDQKGzWtS97aWaNg2X3v5j75UQPyod6Ru+L/qMoeawEJ6Tl7d5qtTAQYj
 tv50dLqeZFVEiOvIpxksYsjkEIBIHxLMpWspLKm0wsCVhlvBYz2DnYnitqqCRmYQZTkbaCp0pYu
 g2EuMsUgd38FNAA==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-GUID: 422g5Jkidpzjksn0Cyze2Crqkg4GYUvr
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDEwMyBTYWx0ZWRfX04mkVSMuh5mu
 7Mr5g/WeJo5BKBHrioFbl0lJUEbi8aSoSN6qkiQkE3K3/gY3Ve7jKy2irzq3VvObQrE/Q6JhWNX
 RTg6jipb4JLQzg0coLGjw7X5YMEb9cPKHHOuekkxXAN6wygdwEmGukYxpI8w4YieMyN6buPwrcm
 fOaWjDpWB7UR3PXCELTjMrz6uD+z2YsDIBxcz+PUOLLQZhHvo/OcJOmE46MJMdiWZUJ4N4ko7yp
 2BuUpvt1ZWUWrg+ioVfcCEY0D5jq/J4vkZOIHcsX68qmtjsT3LgRzCBMAKeKuKH3S6yO6ExASe0
 HHsdgVLfyvh2CaLLfyylGA/qOIQ/PIGR2ddg0UyQ9NH9IslhjEivqMweI/67Lvj3GUag9Xu4M6a
 urgZ/Eo8NFXF2y4b8pAinP5f+3yebfn8FphVqedHcbV7MIpgOdqE7MwRrKxmuOUoOWS3NOJeByf
 M5P7BbjzCB+KLyT81fw==
X-Authority-Analysis: v=2.4 cv=JK82csKb c=1 sm=1 tr=0 ts=69a82c97 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=a0c4dxopxCOJUshKGJ0A:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: 422g5Jkidpzjksn0Cyze2Crqkg4GYUvr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_06,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 impostorscore=0 priorityscore=1501 malwarescore=0
 clxscore=1015 bulkscore=0 suspectscore=0 lowpriorityscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603040103
X-Rspamd-Queue-Id: 89E6E1FFF2C
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
	TAGGED_FROM(0.00)[bounces-271022-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,kernel.org,linux.dev,gmail.com,poorly.run,somainline.org,ffwll.ch,linux.intel.com,suse.de,quicinc.com,marek.ca,linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Add DisplayPort controller for Qualcomm Eliza SoC fully compatible with
SM8650.  The device looks very similar to SM8750 (same DP TX block
v1.5.1) but with a differences in DP PHY: Eliza and SM8650 use DP PHY
4nm v7.0, SM8750 uses 3nm v8.0.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

---

Changes in v2:
1. Commit msg
---
 Documentation/devicetree/bindings/display/msm/dp-controller.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
index ebda78db87a6..d06d396df4c0 100644
--- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
@@ -67,6 +67,7 @@ properties:
 
       - items:
           - enum:
+              - qcom,eliza-dp
               - qcom,sm8750-dp
           - const: qcom,sm8650-dp
 

-- 
2.51.0


