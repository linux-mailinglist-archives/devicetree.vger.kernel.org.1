Return-Path: <devicetree+bounces-321488-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id tAvbLjj4S2padwEAu9opvQ
	(envelope-from <devicetree+bounces-321488-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 20:47:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 50FAA714A4F
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 20:47:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=qualcomm.com header.s=qcppdkim1 header.b=NoxLhzZW;
	dkim=pass header.d=oss.qualcomm.com header.s=google header.b=UuU8CIMJ;
	dmarc=pass (policy=reject) header.from=qualcomm.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321488-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-321488-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id BD875300F47B
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 18:47:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D9FC37A486;
	Mon,  6 Jul 2026 18:47:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D25C378822
	for <devicetree@vger.kernel.org>; Mon,  6 Jul 2026 18:47:11 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783363636; cv=none; b=tx2v9ipqubvwGTxXxacdSAFyO3LL/Nm1VteQVYfksYHD/RuYUUHQ0ZEA/m3JRtxHFd18B3e9ro8GCGWLiq1+oYrFlQ9FAZ4dy6fIYgmeOWrBF6vkbSOUbNYBjKNtX4WX4iBxeLnk+mUp+wmi/444NLjYQVFqQDCmYCc5pUatekU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783363636; c=relaxed/simple;
	bh=OON3yrBUBI5i3rZM45extf8vRKEwdthVDb37mRNgaew=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=mtrKQd7eK+irYzrT5crGVQZiIEjirrZhbDz+PpWE+WnbsYmFnUN3yaK4V7tQLRArKAiP6KVTgn7cxXQHj6k4EW13kmeJ9OTUDA6rFLb6Id5sLLHrQeQf4FS0Jjp10QYpogwsTEnNGU+YtAtpKygzojncfkscz8ggJhiPQufD+hE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NoxLhzZW; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=UuU8CIMJ; arc=none smtp.client-ip=205.220.168.131
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 666FF1X7980532
	for <devicetree@vger.kernel.org>; Mon, 6 Jul 2026 18:47:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=m/XFmTzGyIFMHErJ6/N1l2
	U6wTYZjIQ2iUo/yEmDvQo=; b=NoxLhzZWpOQbgzSzi72hUJg4e1d+Tfa84aaw9D
	Mw2+dD0GWhxf+gHO6JrmHZocJLJG7tDHogeBouSiBReb+vb+u6KsNw45H53UtLl8
	H2DQnBbUngXLBTJVdTMkMajYgTQW7CErmO4vX5wvkqqE7H/4t+VfTT+1SdRUGX+Y
	XZ/eoacZdOEwQ1RRHaC7qy4uYkwg35Hr81z0KeMCov28IeTgS8/gLKtwP+Tcg9Qf
	e4kT7BNhIJ34Y/2Bb7tzYkXyLQGFaoAjVMCewMLj4FLXxpNqavLmlk4ujZSNn7cC
	8AgGIr6iBg1BgnMy4rrwhhwH7tsT3nAHZ9x+6iDObdC1aHtg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f89kgtjhf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 06 Jul 2026 18:47:10 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-92ac0a54110so382187585a.2
        for <devicetree@vger.kernel.org>; Mon, 06 Jul 2026 11:47:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783363630; x=1783968430; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=m/XFmTzGyIFMHErJ6/N1l2U6wTYZjIQ2iUo/yEmDvQo=;
        b=UuU8CIMJnOIhlY+eddRCKQ0u1Tgl1fPFbSR3x9PiBdW8kAKS6Xt0GVk3m1MCgz2P2i
         bmYGHmm2fgcE7+jPCNHzYeh9gF1E7dzG5obtk50pOqyLq1NIWYUneBKmDUm2MiC5RoTI
         UNGUp32YHAC50JVS//3Ji4KwM3CF46P+dHSqTCxOrnca+Vt+dbj6nqdb4UP89RDekFZp
         b1QF7pnaeNCSfpEHuc4l//0un6Achl9mfth4aGn8qparifXaRkLYvX4FZTJpG9+3K491
         4boD8lZhh8yaTqH+dPoB+086I3iILTK12cDMU3sh8jpr2r9YK0yJdTsyukYB6L7Fe+aI
         6ksg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783363630; x=1783968430;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m/XFmTzGyIFMHErJ6/N1l2U6wTYZjIQ2iUo/yEmDvQo=;
        b=MB85CXLg25y2lKeJnv4UYAbRlbAYx9O3SiqVCnA3AeCrreBCPDYws3mGmJ5kreeSGk
         VdxI9XK3oPo2+WbH+iT3XRMwEFTj3h8VPu4oG+LTtphaZ3b1SjIhWy5qhBeSbsn0YWvx
         N6tYsknR4WRzJPvOtmZZ2gDNwlqUJAkZu9bkL0cIw1wmrm8dRWqhMbjq34EeMrtKT46/
         1gSBXGbGumqoH52byuvZsLsbTuHNOx7OLKPmnFBIcux2K2wM8mbFlmcjCb8a7syE5Ysc
         W0adETB0svs+wiqOb0S4C0Cw6GrAwnAnuYf1u0VW4KQJZ0pXFvHHMHBnY2Corq4sq3cf
         qajg==
X-Forwarded-Encrypted: i=1; AHgh+RrqKug5XQ5Zi/cktM7Uo2l1WJIkwwR2ep+C5DziO+1gmbC2fFXjHdGUpF07Fwyg+8SB9955tSDrGpEa@vger.kernel.org
X-Gm-Message-State: AOJu0YwX+AOIwnVxUXWcbyFR3Ic72QyMGfyKHpFroM9A9TviK+Rf42p7
	njdPwvnDTSgYTsiT5Tb+3sHXnIk63AWh4pBImnLnYnn1sK2eZOz89KgXuW70JBXkpO4KUHWipr6
	bzrlesHCiPNpvriIX4xvzihoMuFhZjyP8C5X7xI5+3+m2iBX/TdKvpEXHNmJ7MNCj
X-Gm-Gg: AfdE7cmPNmgffBf3SNWYYlF+8/SYGbPkiyPuaRqZGGFWKZYxvlVsFRpqFjCo97qorAz
	qpIfDIselMSyIHuFj6ra2oxEMfbEL9wj6ab2VuDo0xx4TijuMhAq+CmkAUnCS0cPY2z4dq7ndXJ
	KaHffRmsX/GgSPl8AOwwnGQYN3a8KNTDY6yJtIaSXP7cdVfWPJp+dc+dDBmOLxe28I/nPZbjPd9
	xOv/ppjlc9xJeogPT42PZC/BWffVRImS862h+Z1lvwf6eb115hJGvLUYDJa5E5gRWjN+9MFCf3u
	44GjNi3Nv0at3p5WBsf+oq2n41FzSl11/hYQhCyO1FUkIeN4Q/aX3lBUUL6KUIkI6dPQ0uO5D/9
	/sotZcYdOXGnL3ImhSM7tCc7KciqBuBPYTDld3svCoJDmQw==
X-Received: by 2002:a05:620a:28cf:b0:92e:5d76:743b with SMTP id af79cd13be357-92ebb600d64mr243761685a.56.1783363629506;
        Mon, 06 Jul 2026 11:47:09 -0700 (PDT)
X-Received: by 2002:a05:620a:28cf:b0:92e:5d76:743b with SMTP id af79cd13be357-92ebb600d64mr243756685a.56.1783363629086;
        Mon, 06 Jul 2026 11:47:09 -0700 (PDT)
Received: from juillet.box.freepro.com ([2a05:6e02:1041:c10:b077:843a:5587:be05])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493e0078d56sm3858625e9.8.2026.07.06.11.47.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jul 2026 11:47:07 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@oss.qualcomm.com>
To: sre@kernel.org, hansg@kernel.org, ilpo.jarvinen@linux.intel.com,
        linux@roeck-us.net, andersson@kernel.org, konradybcio@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: bryan.odonoghue@linaro.org, platform-driver-x86@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        neil.armstrong@linaro.org, gaurav.kohli@oss.qualcomm.com,
        manaf.pallikunhi@oss.qualcomm.com, priyansh.jain@oss.qualcomm.com
Subject: [PATCH v5 0/3] Lenovo ThinkPad T14s EC thermal monitoring and thermal zone integration
Date: Mon,  6 Jul 2026 20:46:45 +0200
Message-ID: <20260706184648.35613-1-daniel.lezcano@oss.qualcomm.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: WTVv7Oug6hdkbR0bHV6a5Ch039YByBva
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA2MDE4OSBTYWx0ZWRfXw/2xhy6DaCjB
 /3xrPUpXHOESAFMIvaFMlPkqSlm7YAdjeEbdu6JmhpbRZMK3PAMRJbJ64AhBUor0up3J2SYp1+p
 bXQOE++O32lR3Mmy2k2B4dNKeu/6NeBnjmAewsd0QenlLPPUZVdnVEsW86na88aV/eNsivP6T2d
 7GSRauxXhOkCZEbm+mk99nLBQn1G3WXwadH4xGtZ9jFrjEGdFzbKepw96MPoKUJ0qpqIeqnY26/
 oTiUuPdzGokJtvLwdVNbBCsKpw9GQmyOsZciAMATZiz5EiH+mbcAYPouP2qVpmwZhYV/SY9ocN3
 dsu3Q2Xg9DvoxjqoP49qSgRsv8ZBOafkpDcmZeN5R6MqmJI5SV1FbpbFTzUYfG2HJWtpZ2O/qcb
 GlbzkplfSC/Wc8CFI1sv/fs4DhzVk/KL6CqRaGHFupR5aXS7GZNOsxcI4US67hC15JA3u4i9QwJ
 XVNswC+QioazvzLIUDw==
X-Proofpoint-ORIG-GUID: WTVv7Oug6hdkbR0bHV6a5Ch039YByBva
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA2MDE4OSBTYWx0ZWRfX/6dmnW3AOdl+
 /Gg+3ycAKt0NGn4Jl/Lg20cLsy4k5ku5sxhYFYHgFbsN9FkMhhmr1x0EEYkU/BLir7EanrW2pTm
 fOtwXp32PFlKPtFXg4sI8lsKQZimEZ4=
X-Authority-Analysis: v=2.4 cv=c6Sbhx9l c=1 sm=1 tr=0 ts=6a4bf82e cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=Jz99LMs1rTwwAPREzXgA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-06_02,2026-07-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 clxscore=1015
 adultscore=0 priorityscore=1501 lowpriorityscore=0 spamscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607060189
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-321488-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp,qualcomm.com:dkim,oss.qualcomm.com:from_mime,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	FORGED_SENDER(0.00)[daniel.lezcano@oss.qualcomm.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:sre@kernel.org,m:hansg@kernel.org,m:ilpo.jarvinen@linux.intel.com,m:linux@roeck-us.net,m:andersson@kernel.org,m:konradybcio@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:bryan.odonoghue@linaro.org,m:platform-driver-x86@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-hwmon@vger.kernel.org,m:linux-arm-msm@vger.kernel.org,m:devicetree@vger.kernel.org,m:neil.armstrong@linaro.org,m:gaurav.kohli@oss.qualcomm.com,m:manaf.pallikunhi@oss.qualcomm.com,m:priyansh.jain@oss.qualcomm.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_TWELVE(0.00)[19];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[daniel.lezcano@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 50FAA714A4F

Hi,

This series extends the Lenovo ThinkPad T14s embedded controller driver
with environmental monitoring capabilities and integrates the exposed
sensors into the Linux thermal framework.

The EC provides access to several platform temperature sensors
covering the SoC, keyboard area, bottom cover, charging circuitry, QTM
module and SSD. These sensors are currently used by the firmware for
thermal management but are not exposed to Linux.

The first patch adds hwmon support for the EC temperature sensors.

The second patch exposes the EC as a thermal sensor provider in the
device tree and defines thermal zones for the keyboard skin
temperature and the charging circuitry temperature. This allows the
generic thermal framework to react to EC-reported temperatures and
apply standard Linux thermal mitigation policies.

As the EC protocol is not fully decoded, the passive trip points
get/set actions are missing, so it is not possible to program a
threshold and receive an interrupt when crossed the way up or
down. Consequently, the thermal zone related to the charging circuitry
is polled every two seconds until we can set the trip points in the
EC.

This series fixes critical thermal issues happening on this platform
where a kernel compilation, or heavy workloads, lead to a system
reboot.

Tested on a Lenovo ThinkPad T14s Gen 6 (Snapdragon X Elite).

Please make sure scmi-cpufreq.ko is loaded before testing

Thanks,

Daniel

---
 Changelog:
	v5:
	 - Added Reviewed-by tag (Ilpo Järvinen)
	 - Added the '#thermal-sensor-cells' property DT binding (Sashiko)
	v4:
 	 - Added the missing HWMON_C_REGISTER_TZ attribute (Sashiko)
	 - Fixed dependency with HWMON (Sashiko)
	 - Added tags
	v3:
	 - Removed event based because trip point are not yet well supported
	 - Added an empty line after variable declaration (Ilpo Järvinen)
	 - Used MILLIDEGREE_PER_DEGREE from units.h (Ilpo Järvinen)
	 - Made switch consistent (Ilpo Järvinen)
	v2:
	 - Fixed patch 1 subject prefix
	 - Removed the fan information part
	 - Added HWMON_T_ALARM
	 - Fixed DT change description to reflect what it does really

Daniel Lezcano (3):
  dt-bindings: embedded-controller: Add Lenovo ThinkPad T14s thermal
    sensor provider support
  platform: arm64: lenovo-thinkpad-t14s-ec: Add hwmon support for
    temperatures
  arm64: dts: qcom: x1e78100-t14s: Add thermal zones for keyboard skin
    and charging sensors

 .../lenovo,thinkpad-t14s-ec.yaml              |   5 +
 .../qcom/x1e78100-lenovo-thinkpad-t14s.dtsi   |  67 ++++++++-
 drivers/platform/arm64/Kconfig                |   1 +
 drivers/platform/arm64/lenovo-thinkpad-t14s.c | 131 ++++++++++++++++++
 4 files changed, 203 insertions(+), 1 deletion(-)

-- 
2.53.0


