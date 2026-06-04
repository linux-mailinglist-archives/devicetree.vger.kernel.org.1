Return-Path: <devicetree+bounces-306682-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id WVrRDXszIWrEAgEAu9opvQ
	(envelope-from <devicetree+bounces-306682-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 10:12:43 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id A049863DE53
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 10:12:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b="h/+QQX9U";
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=D+IxDMmy;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306682-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-306682-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 19A9730B8249
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 08:08:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6ABBE393DE8;
	Thu,  4 Jun 2026 08:08:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E89035C19B
	for <devicetree@vger.kernel.org>; Thu,  4 Jun 2026 08:08:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780560525; cv=none; b=AYREo5WNKeRuDPpuTc7/L62WwQ1c/FcquigmQeE1LkAuaau8grvOQgja1DNXdGtxfDo2JNBT6haPRZJlMNgsGs6r6pNESZi7uOjJqPZttINS78oJJXyOpKvbZsPL5ERE+vxhZcmKpJfskhF3fEGvDXd7iYSGVjqnArUcEOx8lwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780560525; c=relaxed/simple;
	bh=R6FZOcCMcMQPOEjJuz1wW0gtCOFpXybWrlx8i13dpWI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=fBKkHEdb7LdzCg8thj/XEr0BAa3PBTmNsoFLGBR1DsZ2s9OG7qI36z2fneKJnKXM7Vah5DHW86Dt5Yno2bouN7V0XqC9J+sXgVsRGoOJjWXdBT24FuG6OM8KHsBY01E+aeqQ7oOsg/1kTaPOZvHTA3RzCzOqui/d6mF+XAjbeJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=h/+QQX9U; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=D+IxDMmy; arc=none smtp.client-ip=205.220.180.131
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6540o2ar313885
	for <devicetree@vger.kernel.org>; Thu, 4 Jun 2026 08:08:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yVbcebMh6Di5VhpLuMDSJYWN/Rb4djQcDc2Pn3rowVE=; b=h/+QQX9UtObTkBIr
	3whzket8t2XN47q8TBQVJ3q3SfySf/dKAH0e2gBBH5KL1b0ej4ToJn2FvN83Jcwd
	OkIf2ypp/3V9Z/nPJc/mwTntsvLh+PZ6kryJqS/GtLIK16oYhZiG8Dwnt1A55MXX
	Asp65VRQFNEqZp5sLl+bJLwt72qBHTfdgYxKZkHjKOqx2EAmHo03+e76eIWTsYuO
	jI/dLWAaG/0Wxei/y5w84fQkbi/g++HQ8hr6CzZodZEP00YX3E/MmFev+tGGs+XU
	D5syeduUiVaecikqEvVo9by03226rqxrK+7sjn9BEAmwWvqoECOqvUmf+jh2j7ET
	dfD+6g==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ejy5v1bhn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Jun 2026 08:08:43 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-914b9d0162aso10439985a.2
        for <devicetree@vger.kernel.org>; Thu, 04 Jun 2026 01:08:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780560522; x=1781165322; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yVbcebMh6Di5VhpLuMDSJYWN/Rb4djQcDc2Pn3rowVE=;
        b=D+IxDMmyE+aINdi+7kxS7KgsiPcY3WT/nQ6qADJh7RKr4xAXM42DbJbkANiniFsF9h
         22P5/0dRQKiIB0eEXGb1P8YEKM7xuabKVfEh9GIHzaUmH8gGrmzw6gtvyWEfBpFxljoK
         ob0B64lZuUX96LnnmuTTcPFGLDQmpX03iLAX2Irj8+SkpPAk2etQe0lMTejYFLPhyV4w
         wt79ThnDJlgrGwZiZ7ai89xamdN88AOoKON539w/DMIImv5iDPe2DeoChhJAGkKk59qG
         1Ff9qnS72CQk5M0mFQGeK7XJjqR/BnByelB9vYS383IMAwlHE4sUuTvs5J/cpr7OV1o0
         twTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780560522; x=1781165322;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yVbcebMh6Di5VhpLuMDSJYWN/Rb4djQcDc2Pn3rowVE=;
        b=mEdrr2Cqqcez/QRQDcZtZ3M9KFbv+gWqCT0lsw3SISJebtv6gOH51AczehrgXyOAhK
         cx7su9g8h+JRPPKTo2dkwCoukbY1nN5Y8kANttct9bS23uFn5aMa9jU/fvECTs5FO+lf
         qVD0f6oo1Shvdo5RE2I8ybnpnEn5+mAnuLu96EHYDaXxbi1XrzFAizfFGmQ6YX+FvAL5
         caIrYB5/fQjRXp3eiRi/0mUTDVrBBMaeBhuhF+AvVuCG7mdkgZD2ogXQIMF/cpz1PKQq
         DsKVKQb3naMWjNNEQV0gf9oScYwmsclHST+Xp9E7+2ZeOjxUrOHEaOmbc4ThTWwqVZYG
         ig6g==
X-Forwarded-Encrypted: i=1; AFNElJ/hjZHlatdgLv2NyLY91d9gEB1uAezIBlKAvfLbKZoTzvVpxn19EuF9563QXXE+iRIfIPnSjTDVz+q7@vger.kernel.org
X-Gm-Message-State: AOJu0YyJUah19VUN3ONaNohaLvQ1QweapfypxO+SBoURcxmZCptzc6fI
	zubktNvaSq355ZRpmVrTvVnnwBvfWtP0faUP4J0TQuR0EIvcnypqntNx1GRJonMDXDrZb9kzG1O
	JKCkChAw0pgcWh7S4oxC4JqZzZWwaEemf0gSghNq2lAQ3TG1J+D2A0fo+YYGwU6I1
X-Gm-Gg: Acq92OE9+R6rtEpVowXQ6+PMPi5o3EjBjzzatoJ0/gdZ58OFZAPyU3xmfYt/fa0un4s
	J5/9N54lRF7U9f+JWx2JrA4JH9cTfBMsCMSWptd4mU1VJK0bmps1IcuIVmzBBWDNYTu2qyZnARf
	SEzkSsFHw62hc6FZ9F03jMQhrXv/yBbVUZxzjh62ZrUYfLvNpm7SKIJI371L7KBP5/z3TKNZt9G
	7/B6KRq9EgWfRBadvD4CyrvQaZlkVQJQwh4BUVvA17IBPyYCFFDhXHVlRzYrylZbve9qqKb+ZFb
	Pivpqf6US0n0gShDEuMpXn5rsaKFrAIfIHLjyzknDHARWfa6UhU8jXIQ/zoecSCtBSe1D1d2fnO
	5mbO1cxiLV6WxKGNCQbwwqbS1Za4pADhl4LMAMhvw6RxyNrN0iLHAP7YYr7Dz2eZjiNPkDYNazP
	7m4sVb6vz1
X-Received: by 2002:a05:620a:1999:b0:915:776d:52e4 with SMTP id af79cd13be357-9159e3519c4mr133789985a.8.1780560522624;
        Thu, 04 Jun 2026 01:08:42 -0700 (PDT)
X-Received: by 2002:a05:620a:1999:b0:915:776d:52e4 with SMTP id af79cd13be357-9159e3519c4mr133787085a.8.1780560522124;
        Thu, 04 Jun 2026 01:08:42 -0700 (PDT)
Received: from KDYBCIO.eu.qualcomm.com (public.toolboxoffice.it. [213.215.163.27])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bf052097992sm272304366b.26.2026.06.04.01.08.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2026 01:08:41 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Date: Thu, 04 Jun 2026 10:06:57 +0200
Subject: [PATCH 4/4] firmware: qcom: scm: Allow QSEECOM on Yoga Slim 7x
 Gen11
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260604-topic-yoga_submission-v1-4-57c70c23d0d6@oss.qualcomm.com>
References: <20260604-topic-yoga_submission-v1-0-57c70c23d0d6@oss.qualcomm.com>
In-Reply-To: <20260604-topic-yoga_submission-v1-0-57c70c23d0d6@oss.qualcomm.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Douglas Anderson <dianders@chromium.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1780560429; l=1001;
 i=konrad.dybcio@oss.qualcomm.com; s=20260604; h=from:subject:message-id;
 bh=R6FZOcCMcMQPOEjJuz1wW0gtCOFpXybWrlx8i13dpWI=;
 b=3UzD5s8LpQciKzqLHwUPKSZ/9f5DdpeCV+exqTJNvMDnsE50v8T6bcgPcxVh6OQoh9Aidfxz1
 58XJQLwOJq8A+N8lLyjoUhER2XJxlNJLkB9mAZrzBaSEV8YgtsMBdTD
X-Developer-Key: i=konrad.dybcio@oss.qualcomm.com; a=ed25519;
 pk=SGRRMmlLTuP/lGKdQ0f4KPvxn8VVsXtXaTpdGc8i82c=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA0MDA3OCBTYWx0ZWRfX1I/YmWvHs55h
 vm5euXVGVetH5LYVUleh9dyxKZlCLS4uVaA69BA9SONnUONDnobHcdkRXHBebljDVyTmzsKxvBA
 kR6YrrLNt7l4PqKT4zliHcAaf02Lr63bs+6E23f+fVnPAhR131N9Pyje597g9y3GyHiz/74f5kS
 0+2GeaG/n3CpF3jHK8oZGIMAH+VvBwf6y+i6S2jRSO2pcKoUbNxcO2l+BW7ulEkPNaa6GH9EKFA
 jZh9UMDKmaWr1G8aeTeGOdoc2+umt9uB4cGoXuiOXqlobIKiwSUArbU67w2MBCDDDQ6BDayCNNW
 m6IfjWKl8A+CP7YCKYQQCZy4SCYaUKy/Cz2dinDZYd7AmZTxgLaGQuk9WGIAbFZcIt/JK6n2lkn
 romU/Dp6oTubCNFSK4diPNmeXKCsj4Vr9xqtP6BlGN68WKkjDUPMYizPqM2sXqyXK6KZsDKrlNk
 o14vdHjli8ChYFPIlOA==
X-Proofpoint-ORIG-GUID: bptLaiZsho4MP-LMBGxtkG4quGGIp8dV
X-Authority-Analysis: v=2.4 cv=afRRWxot c=1 sm=1 tr=0 ts=6a21328b cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=aBIYUfOEhgoR9egqXYNcqA==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=cNJI-YeLJ0YrPzV7rEUA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: bptLaiZsho4MP-LMBGxtkG4quGGIp8dV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-04_02,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 clxscore=1015 lowpriorityscore=0 malwarescore=0
 priorityscore=1501 impostorscore=0 suspectscore=0 spamscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606040078
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-306682-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_TO(0.00)[linaro.org,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,chromium.org];
	FORGED_RECIPIENTS(0.00)[m:neil.armstrong@linaro.org,m:jesszhan0024@gmail.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dianders@chromium.org,m:andersson@kernel.org,m:konradybcio@kernel.org,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-msm@vger.kernel.org,m:konrad.dybcio@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,vger.kernel.org:from_smtp,oss.qualcomm.com:mid,oss.qualcomm.com:from_mime,oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A049863DE53

Allow the use of QSEECOM on the Glymur-based Lenovo Yoga Slim 7x Gen11,
as there seem to be no issues with the firmware that would mandate
disabling it.

Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 drivers/firmware/qcom/qcom_scm.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/firmware/qcom/qcom_scm.c b/drivers/firmware/qcom/qcom_scm.c
index 6b601a4b89dbf04322730aa22fc9590d180a383c..fbcb9dddfec68e32564e3a4209c3b6f471e0fdb5 100644
--- a/drivers/firmware/qcom/qcom_scm.c
+++ b/drivers/firmware/qcom/qcom_scm.c
@@ -2304,6 +2304,7 @@ static const struct of_device_id qcom_scm_qseecom_allowlist[] __maybe_unused = {
 	{ .compatible = "lenovo,thinkpad-t14s" },
 	{ .compatible = "lenovo,thinkpad-x13s", },
 	{ .compatible = "lenovo,yoga-slim7x" },
+	{ .compatible = "lenovo,yoga-slim7x-gen11" },
 	{ .compatible = "medion,sprchrgd14s1" },
 	{ .compatible = "microsoft,arcata", },
 	{ .compatible = "microsoft,surface-pro-12in", },

-- 
2.54.0


