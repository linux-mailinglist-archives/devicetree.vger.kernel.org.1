Return-Path: <devicetree+bounces-264000-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MEHLLHvgiWnGCwAAu9opvQ
	(envelope-from <devicetree+bounces-264000-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 14:26:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FDAD10FA86
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 14:26:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BEBD5300DF4E
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 13:23:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0607378826;
	Mon,  9 Feb 2026 13:23:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dyv2jjbg";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="D/zQZSDR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E53A378812
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 13:23:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770643425; cv=none; b=bC5ZjwQU34Guorn9Un9RmeXlGD39jWlCE9ra9jljdOSBiMqDjYWCENJ1eRgZ58jPH1zmkvf9fZkWM+cUsJViW4coK/IaWW/ef3Fy4DWcOgLNgAOkLQjWFRmuqyOd6IzC/D8ig/UTAa0Pz8ETBPSFNLWgskSJ9/uZXEtEgwpRV7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770643425; c=relaxed/simple;
	bh=g/ZR74vhaTbG/KuTPVgsmyg7YXtgpFIDhkub2LjUZZQ=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=G/unsR8jA0lTal+uzVeDaNDBYxKyoH9NgcN+3HMVu7CwwIU59FGI/skbC1h9kO/NRKqcUkMB+4SSsi0kqzkWTaDrSQjq8PQABAfvlk97EGnxu7bPy+IFS0OACHUK0f7L60vl1ttuF91RoJrt35PA5FzcjB0+l0RpYcIlr+Oj634=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dyv2jjbg; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=D/zQZSDR; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 619DF7iu857023
	for <devicetree@vger.kernel.org>; Mon, 9 Feb 2026 13:23:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=hypUfFCv2fOn8byPy1CQII
	P7AQPAc65urxcoNegxwvg=; b=dyv2jjbgDBeqbkWwdcSRKcsaZfSy9OsORjXfQA
	H3MOogPu/BuV/e8bcQ/gChSy1rtwxGg4+rq58gVIFvW+JZyvAd3xMMXrZaQXfrcD
	vndKojM2t5JeeS9eSbF9K377w8LLArpye1U9iexs1lj6mWKr95jtrcWPV+BNBLqA
	qIVm5RAs/kKDLSmWtwNOZmJGQ1ZxV0+kVKrYm2Lr6vZ8yIeCcpIkEGICySW0Imy9
	xHLqU1YFkzyU5XN0hZ140E2gguZcXOG8pQmQ9HHE2U4Ffz4kPhvF0GF1aTPiy4dq
	jXTWMz31mxVzTWAvmtFR06HvH00WInksn0k2b62ahQ+hDopA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c7ga600x3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 13:23:44 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2a944e6336eso119804825ad.0
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 05:23:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770643424; x=1771248224; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hypUfFCv2fOn8byPy1CQIIP7AQPAc65urxcoNegxwvg=;
        b=D/zQZSDR93M+j0IkqQrI2yK9yO5hsuESYcYOs891Wiwg7lvtH/6wm+JFTHJFhHJgyY
         m3isdtnaQLKXwwy2inwNQWS2NgQ4gD7P5RadYlL4q3gC/sY16nhxuLxwGWls4SxK9bUJ
         505pWO0ckKgHLDhmKY/iRmyPWR1X7GEw+bwU8UCwIvT9tyjKrPRZvIHFARXArmF/uBu4
         A53+OTWJJb0QWKNomurF54wke6HsZCmCF1i6MCkN4zbN9RQ4T7SEY2HF8H396C72VQdm
         pD3okXK97vtfWnIOEFwRNmdXeoJzrC3QKQcA0sYFhj3unRSDsl/ZkZq+QIyKz9iCFA9i
         9CZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770643424; x=1771248224;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hypUfFCv2fOn8byPy1CQIIP7AQPAc65urxcoNegxwvg=;
        b=w/neiGDmdQYYN6XZYDYvJsiVFu2Dvhd7IoYfFfP462gOT2yeRJj0ObZTBftiZc5ZFL
         63M6SZlOeXkiT2dmmjjsSA/iP3+7ILaEI7pwlWVwVfbn14k0jgeu8iCrbMj7hBEr/Rpy
         /1frSTLDGDQqXR/MYNBD7ZE0K5A6y8yBNxx5WfqFXtD5sVM/lXNKBNMM06OaA0Xq+kQt
         6vmwSj4XVtPm6MwHZC5fUkCh33lgNKcU+aBcU5qjDj9T1EXwKUxyKG6DHjD3vydnW+HG
         2iRvQeogAEQWAwvokdtCgPOOJJ3ly+K8BW8cJoH/fGPnRUv3ofgki6nMOlZO/hZlS8dJ
         R4DQ==
X-Forwarded-Encrypted: i=1; AJvYcCWqt3ONQxEzHgimPZffFVOsiQPHJYCwV9rFvNMcaBZPJj8FHorsnZtkYmXBybgV3a9E/nz3diU43JC+@vger.kernel.org
X-Gm-Message-State: AOJu0YyF9/ZDniWN8pgbgvRqRoMzem/rGiRshT/iIZUAZ+KC5CSve1Gy
	h8OJDAuNICApriqT3LsshJevpHzaQIJ26ybGMrSAwtgogtNWT+kqWWXGLYWNxkErhnsIfSg/JGv
	ZDyTMLdC/Mz8E26Vwzw3hMKZNkFyFmJeOurkdYR0vRHBnS1DcFJnjEocvQexPIWQ=
X-Gm-Gg: AZuq6aIzXuo6QjDianV7DG7JF1R2yFyiJEcC+OEyouc7NF1RDasRWqeWRoBNCwJ+HJw
	KiUdYLI9jzdAIwUyOPGFbCpac50M7Qb83uC/iHbrkzLbRYtK6N3cSiucIDxVz6Z74fGZZtlnwir
	cYhO5WovguDdGyHTLYhcnwiMaqhKcjx75SRnDvBSRYY00XeJCamLWqQXDFtvMc0XZqw76mQBQWH
	rR4yL5wTZ+Y+/rwCri8Sl5goegBt3e2u5kVKZspBuy41T7MLOELtB6dYfmoCugg0QWXc+q0QCOI
	ISeZMylzWmp3tXZbt7iqABw4ysKm2pUSen5bEFbijFSYhsy5PgyNlek3mtM0PK3F2az2xFjdQyL
	b3B22KCYKRzlna2AOSRONKVkhLVokkzg1Wp1Ytok=
X-Received: by 2002:a17:902:da91:b0:2a0:c5a6:c8df with SMTP id d9443c01a7336-2a9516cd2fbmr122478915ad.21.1770643423989;
        Mon, 09 Feb 2026 05:23:43 -0800 (PST)
X-Received: by 2002:a17:902:da91:b0:2a0:c5a6:c8df with SMTP id d9443c01a7336-2a9516cd2fbmr122478585ad.21.1770643423509;
        Mon, 09 Feb 2026 05:23:43 -0800 (PST)
Received: from hu-kotarake-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a9521ba245sm107895765ad.47.2026.02.09.05.23.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Feb 2026 05:23:43 -0800 (PST)
From: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
Subject: [PATCH v2 0/3] monaco: Add PMM8654AU PON support
Date: Mon, 09 Feb 2026 18:53:35 +0530
Message-Id: <20260209-add_pwrkey_and_resin-v2-0-f944d87b9a93@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANffiWkC/23MQQ7CIBCF4as0s5YGqKXVlfcwhhAYLNFCHbRqm
 t5d4saNm5d8i/cvkJECZthXCxDOIYcUC+SmAjuYeEYWXDFILhWXXDHjnJ6edMG3NtFpwhwis62
 zfouNb5SDcp0IfXh9s8dTsac0svtAaH4xIeX/2CyYYGbnse/apuuFOqSc69vDXG0ax7oMrOsH0
 zbGILkAAAA=
X-Change-ID: 20260206-add_pwrkey_and_resin-c5dcf4e3f36d
To: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Courtney Cavin <courtney.cavin@sonymobile.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-input@vger.kernel.org,
        Rakesh Kota <rakesh.kota@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770643418; l=1016;
 i=rakesh.kota@oss.qualcomm.com; s=20250919; h=from:subject:message-id;
 bh=g/ZR74vhaTbG/KuTPVgsmyg7YXtgpFIDhkub2LjUZZQ=;
 b=N8i5t7LvRfWFPv655ifUkpJaCw+u/jpmU7uQYC+N0W91NkAY7LRwCkMcH6sa1m95/ntXI8mwm
 iSz50LwuyLIDeJbH1lWE/9FZLuKWxHHA0sWkXDu2gj+MLkXC2/t5as9
X-Developer-Key: i=rakesh.kota@oss.qualcomm.com; a=ed25519;
 pk=dFhv9yPC8egZglsSLDMls08cOvZKZkG6QQn1a/ofwNU=
X-Proofpoint-ORIG-GUID: NAP0w_Tt-XgMHSzSCzLPELzB5p68ZO6M
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA5MDExMSBTYWx0ZWRfX6gvnwT9d4GAf
 QnZGgMUNg7OxSE2c35OyAXHEgdtI7rggUJ9RiMIDyK5trWvVJCIBArr/WlNij5wi+Gfcb/518n1
 h4xLKip9zqH0A3LGsi2Udq6Z0stvzmmjKj33xbh5aDWYxx0GlYZMKsTGIFMTspXjXvWAAUoqCIB
 4iCmc/cxSoRfnxkLYptVrhjK8NuE+TdDXzFOHK4bt9FqFUso02bP7ydiMj4QUQn05tmGIxPJ6Gs
 TshgplofYLjKewR1/IqGVIHNkKSSwAQ103HQfvloZEMvpJbPY7MZuJsfEFTtsruAyty52tzx+KL
 Ni/jQovCPW8uHKTWRBmiUgJGOwo23dGP4f8svtYynnEA5jeGLb6ON+kShVax/MojDC79YpOaG9C
 S8ULYwvEXgl7l5Vu2z54kg0wNevg9k0niIXOlK89et/8/Dh+3XfbbYwA0zketYTtiNtUlm8/n7q
 5PS7X5FtjoQh9j+7bKw==
X-Authority-Analysis: v=2.4 cv=WK1yn3sR c=1 sm=1 tr=0 ts=6989dfe0 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=x58ZVvKx_e4wcmJFeN0A:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: NAP0w_Tt-XgMHSzSCzLPELzB5p68ZO6M
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-08_05,2026-02-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 suspectscore=0 adultscore=0 malwarescore=0
 clxscore=1015 impostorscore=0 lowpriorityscore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602090111
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264000-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,sonymobile.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rakesh.kota@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 5FDAD10FA86
X-Rspamd-Action: no action

This patch series updates the PON power and reset dt-bindings and
device tree to add support for PON power and reset keys on the 
Monaco platform.

Signed-off-by: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
---
Changes in v2:
- Introduces PMM8654AU compatible strings as suggested by Konrad Dybcio.

---
Rakesh Kota (3):
      dt-bindings: power: reset: qcom-pon: Add new compatible PMM8654AU
      dt-bindings: input: qcom,pm8941-pwrkey: Document PMM8654AU
      arm64: dts: qcom: monaco-pmics: Add PON power key and reset inputs

 .../bindings/input/qcom,pm8941-pwrkey.yaml           | 17 ++++++++++++-----
 .../devicetree/bindings/power/reset/qcom,pon.yaml    | 16 ++++++++++------
 arch/arm64/boot/dts/qcom/monaco-pmics.dtsi           | 20 ++++++++++++++++++++
 3 files changed, 42 insertions(+), 11 deletions(-)
---
base-commit: 9845cf73f7db6094c0d8419d6adb848028f4a921
change-id: 20260206-add_pwrkey_and_resin-c5dcf4e3f36d

Best regards,
-- 
Rakesh Kota <rakesh.kota@oss.qualcomm.com>


