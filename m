Return-Path: <devicetree+bounces-268156-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YKwsK1iknmlPWgQAu9opvQ
	(envelope-from <devicetree+bounces-268156-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 08:27:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D26019366E
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 08:27:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6B903311BE71
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 07:20:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 425342F25E4;
	Wed, 25 Feb 2026 07:20:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EB44F3x2";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Mqd5yoOa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8BA42D374F
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 07:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772004025; cv=none; b=HjKfx8znRQ8e3mNWSFKOo8xxGcRNCMH7mjVsByD+xe2wZrgW/q9VTB+Y8JaKkzWPPPD6RYERYk3k2/3FUTyzj6iN2SBUihIxfEv4q3fv7j7c9Asc+qVQQNu2uIRg2J7RUD1pk/TlLUV7XWshui0FzJVbcKscZ4C8uszETiH92ro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772004025; c=relaxed/simple;
	bh=nrawkYrqaMLcFxb/56NRyFT5or0G6gDvhZqr/+0lZy4=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=jwYWBsMgjEtyF90Isu/uQuMT3srj2zZIqTF3cncYWTgy5jsC+FJ9jA07YO6bR6JW+xhMqAKJxkzNNa605lGrfDKad1y+N0j4oKInEuuYuGQ5IS5qFE5PpGDbhNJX69OpFg+hApWBD0EGSrO2B8eqTmPdj7WIPUVkl9C9srZY9eY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EB44F3x2; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Mqd5yoOa; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61P2H5m04077429
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 07:20:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=y8UXtpsg0b5K02mJe3Kp1i
	iPoBapYGtxgr56r34VJIE=; b=EB44F3x2vn7IqNq8q2S8Urc/qRudf19hgZhMbL
	KTTgfWMdnV/EGOZoYxXOX6qd5grxnxF7h7w2qYOlCDrTdd9n7bUkRmLk6ksZ8kmH
	ImGlgLZbaYXI6RwqaDY+rBLQqZpqRrvW2D5q99TasEuww3XqPtQbGQ81d4f/EAmv
	4PGHu/mwiIz7EnhZqY0TUoQcZ5zetoPHgrlRFQcjAf71E96o1qFlSm1h6nRRQWrI
	26YUiu5qCYfgQXYPoYwqP+1s+uT9F8ZvcFyoz4uAoKfPEAi1IKRFjn+7tmOHTtUX
	Ydpm8wiIbXf08H2Hk+VxBadZkBKiiJ5Xra4U/BfACIZbI2cw==
Received: from mail-ot1-f72.google.com (mail-ot1-f72.google.com [209.85.210.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4chr5p8psr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 07:20:22 +0000 (GMT)
Received: by mail-ot1-f72.google.com with SMTP id 46e09a7af769-7d4bd29099eso77848740a34.2
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 23:20:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772004022; x=1772608822; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=y8UXtpsg0b5K02mJe3Kp1iiPoBapYGtxgr56r34VJIE=;
        b=Mqd5yoOa8e+jU4EwdprhBRLvzGrj8uKY2xPYDOgYerQXC1rSowbsFjnhWOcTEROwmk
         wxw//Cp0/nNyFPsfipuV1KliZg/qfSEB5eNBx2EmhmUj+HB3RNY/I4YiJ/f2QzQ8bbOE
         0Gl8DzXLK3vRNAupdLlhh6EpyRzP2ypv79nAUmSCg1P73bLtk8oDsmxp+gmray7GbXI2
         scp4Pick3GbsjrFsI9JIkqiBXY4Ge9BsW3yhvizPKnqGKfzT17ii65JxcsHLqoxt2Zj1
         Y8huw7Zep/GrCkCSGzz+opaGXIVeQmk5hnGzlYpa43RZabQgyWTcJBNehNzalQoTSGnH
         1SOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772004022; x=1772608822;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y8UXtpsg0b5K02mJe3Kp1iiPoBapYGtxgr56r34VJIE=;
        b=CCa7s3ojQDHPgeKkMfe9i/Wrhwh5i1lI4kcEjPR3gLxOHz9M/CcxBwWXjA7vs4HxsC
         OX3m2XZbzBE0fo51mPm7TkNnV0T/0o46+X/T86KN9SwZ+qWqsBwF6m1J0o8TqbiWbdPp
         hFnVpJQe9UeTdKaGHiHoJzZBs3QUdf6zi5AborWuIRFLM7w8kLcrf/dHQfzYjqf/g05E
         Dnabuh9O7V2s/jT2RV/wOxr399XEakFx1ZzSZTAvwwQ6uEOyl4G3+o1NSmbjXv09jNEA
         uZh4f3l7YxRaDaxj3p6GFokYueP81rus0/qKcHksa4iCHcQvNtp9alZq6OwtTctUEGzV
         yzvQ==
X-Forwarded-Encrypted: i=1; AJvYcCUJyNmgpEbLh7bYM5nJGGEiqzBqQKLgTKHdLJaPgXKHf3vzrCIOB0yQNTtos8kfxA4oO+ECMU2tLo09@vger.kernel.org
X-Gm-Message-State: AOJu0YxVleHZ8xvNwDiT9usZhV21lisedv71HtRpg9Aola2/9UTYYK7R
	ooXOMz/BMTBaJu1Lypn3Mb1SIFmWoZWHt/QkLdolhz99JMziQOOuv33y5DLIrn7nUWjYa3i/EfI
	737kns1SFTuMYFzT5z/1xSLXIqpvZXBbEQPNDKekQ7B7IeauQyeTo2n+xm8BQFl0K
X-Gm-Gg: ATEYQzwSuHXcan0dxRuFIYDGRNr2VxNRXYH0Nl23VqC1oLXiUGoXoRWwNNGXrd2BJPq
	SDhvBRN/z8WkZRxF1pKjkjKqtE0NhWxsiLCngCNcojdtkNs4Lq7RYePVuHYFOrz+7NhLcIvOZDc
	GYL/KMVGHCxwgDmfHIwkWNt7DHowTej+5G9DHH3JQM9Xr5u+ZAjPHAX0vhoIhTV8eDMRSm+whsD
	rLzujVqBNm/3bxKoAecIyyb8gmqJus9bmjG9X24GaCyeJkpnR4nWVB4CoGFXUthaOSbXbbB42/Q
	xDO08UJw/pFiQdaIt6PyPxrNMoTHjZTCBtdU/+4Khank66rUAczr1jasxd0tciRYlhzN9vN//rs
	FPbF2pO7nK6kZEk+z4UYhPrgBvIR4hYfKtOSyEkzgeJEK3AxLB51nYRe9dIsL2z0Xoe49jwPZ
X-Received: by 2002:a05:6830:240c:b0:7cf:ced8:b5cf with SMTP id 46e09a7af769-7d52bf30d38mr9088736a34.26.1772004021923;
        Tue, 24 Feb 2026 23:20:21 -0800 (PST)
X-Received: by 2002:a05:6830:240c:b0:7cf:ced8:b5cf with SMTP id 46e09a7af769-7d52bf30d38mr9088714a34.26.1772004021531;
        Tue, 24 Feb 2026 23:20:21 -0800 (PST)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d52d038dcdsm11711730a34.16.2026.02.24.23.20.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 23:20:21 -0800 (PST)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Subject: [PATCH v6 00/10] arm64: dts: qcom: kaanapali: Add more features
Date: Tue, 24 Feb 2026 23:19:15 -0800
Message-Id: <20260224-knp-dts-misc-v6-0-79d20dab8a60@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHOinmkC/2WQQW6EMAxFr4KybkZOSIBBVdV7VLMwiVOiDoRJG
 NRqxN0boF1U3Vj6lv3ftx8sUfSUWFs8WKTFJx/GLKqngpkex3fi3mbNJMgKpFT8Y5y4nRMffDL
 cWUlEOvctsrwyRXL+c7d7u2TdYSLeRRxNv5lsBj9jkW73DJuPWTZQSrjD2uJ5ZwlxsCINYaYpB
 sMXxYE746ADZUGgew0pnW53vJowDKdcXtgvdOv4uS1KctA0HRhd1xIrV+uqVKQVYqmcdgZQGlD
 CsC1u79Mc4tf+jEXswY67Qf69e9E5CUhLjezc+QziXxJ2Wdf1GzsLG/BeAQAA
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        20260114-knp-remoteproc-v4-0-fcf0b04d01af@oss.qualcomm.com,
        Jie Gan <jie.gan@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>,
        Kumari Pallavi <kumari.pallavi@oss.qualcomm.com>,
        Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-3d134
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772004019; l=3020;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=nrawkYrqaMLcFxb/56NRyFT5or0G6gDvhZqr/+0lZy4=;
 b=YDAxiXM5tVVLLU22vPc0+K55aPv6TOxQrupHKoVAHu0Zt4mRsaxgcFjf7naTGAa49M9mSLSDB
 ViCxI9VehJpDkTGc45Z0N/TaWXtqse/IAqUVQYLqNeEaaXsyNRhaRl5
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI1MDA3MCBTYWx0ZWRfX2Fhghy1/naaB
 11CpCvFIirPSPT0gy5c+EAdGC+Lk2dP2dGRgF/2fWZ2xSQBek5AWb4RfAMRsTeWU/KHVlSl1ups
 NxIvmmi8yPIu2jUbrEjQP9bbdsJU+jbnEFQou6dbaz1mu5hL2ZeP6s6luzYiZHmv6kpQY1dJvHD
 h3Kn1VxbSpzm0+DpaHrAePjd6jS8MVrlYPw0nn02SUprtFJQVI4Wb5vQM53KrhbscbAUB6mUCmP
 jFXXm+jKW20BaFJRxtXuaM654fUzBNkfOVoJ6JEih3sTDQFcQgsucf4UTr2xDxq0Kxe4f3eTTSU
 iKkLUiepqiuS0dRlxgittAz6/cMPWmqFbJgvPMFMuV95JLqpt/z8ZeVqIjSXdrxOfEiPK1Vk0vb
 PADpthzbwNOxqrR4nZ9xYxz+9VA1cp4KhDmimD1vz0ju5r5qZcHJrHRLxnPbCNAEwzyvbtzUnOc
 cjZFi+y8T2nWZYGmLUQ==
X-Authority-Analysis: v=2.4 cv=GstPO01C c=1 sm=1 tr=0 ts=699ea2b6 cx=c_pps
 a=+3WqYijBVYhDct2f5Fivkw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=4LptFnmNR7OdvzKBXfYA:9 a=QEXdDO2ut3YA:10
 a=eYe2g0i6gJ5uXG_o6N4q:22
X-Proofpoint-GUID: 1YaDlhKoobcDYauwxTY8ItE-0poLSYku
X-Proofpoint-ORIG-GUID: 1YaDlhKoobcDYauwxTY8ItE-0poLSYku
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-24_03,2026-02-23_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 priorityscore=1501 malwarescore=0 impostorscore=0
 phishscore=0 adultscore=0 lowpriorityscore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602250070
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[23];
	TAGGED_FROM(0.00)[bounces-268156-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jingyi.wang@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4D26019366E
X-Rspamd-Action: no action

Add new features on the Kaanapali Platform including:

- TSENS and thermal zones
- CoreSight nodes to enable trace paths such as TPDM->ETF and STM->ETF.
- QUPv3 serial engine
- ADSP and CDSP with fastrpc and smp2p
- Audio(enabled on MTP only)
- Multimedia clock including display/video/camera/gpu

binding dependency:
- adsp/cdsp: https://lore.kernel.org/r/20260114-knp-remoteproc-v4-0-fcf0b04d01af@oss.qualcomm.com/ - reviewed 

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
Changes in v6:
- rebase deconfig patch
- fix audio node order
- Link to v5: https://lore.kernel.org/all/20260202-knp-dts-misc-v5-0-02de82bf9901@oss.qualcomm.com

Changes in v5:
- fix audio node order and cambistmclkcc reg length
- add reviewed-by tag
- Link to v4: https://lore.kernel.org/r/20260127-knp-dts-misc-v4-0-02723207a450@oss.qualcomm.com

Changes in v4:
- Add hot trip at 120C for thermal zones
- Drop smp2p-modem node
- Some codestyle fixup
- Link to v3: https://lore.kernel.org/r/20260114-knp-dts-misc-v3-0-a6cc9e45de93@oss.qualcomm.com

Changes in v3:
- seperate patch in function
- pick remoteproc/audio/MM clk patch
- Link to v2: https://lore.kernel.org/r/20251225-knp-dts-misc-v2-0-a8a8a31fd528@oss.qualcomm.com

Changes in v2:
- picked latest coresight patch form: https://lore.kernel.org/all/20251205-add-coresight-nodes-for-kaanapali-v1-1-d3d2099b9b24@oss.qualcomm.com/
- Link to v1: https://lore.kernel.org/r/20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com

---
Jie Gan (1):
      arm64: dts: qcom: kaanapali: add coresight nodes

Jingyi Wang (3):
      arm64: dts: qcom: kaanapali: Add ADSP and CDSP for Kaanapali SoC
      arm64: dts: qcom: kaanapali-mtp: Enable ADSP and CDSP
      arm64: dts: qcom: kaanapali-qrd: Enable ADSP and CDSP

Jyothi Kumar Seerapu (1):
      arm64: dts: qcom: kaanapali: Add QUPv3 configuration for serial engines

Manaf Meethalavalappu Pallikunhi (1):
      arm64: dts: qcom: kaanapali: Add TSENS and thermal zones

Prasad Kumpatla (2):
      arm64: dts: qcom: kaanapali: Add support for audio
      arm64: dts: qcom: kaanapali-mtp: Add audio support (WSA8845, WCD9395, DMIC)

Taniya Das (2):
      arm64: dts: qcom: kaanapali: Add support for MM clock controllers for Kaanapali
      arm64: defconfig: Enable Kaanapali clock controllers

 arch/arm64/boot/dts/qcom/kaanapali-mtp.dts |  240 ++
 arch/arm64/boot/dts/qcom/kaanapali-qrd.dts |   14 +
 arch/arm64/boot/dts/qcom/kaanapali.dtsi    | 5119 ++++++++++++++++++++++++++++
 arch/arm64/configs/defconfig               |    4 +
 4 files changed, 5377 insertions(+)
---
base-commit: 3ef088b0c5772a6f75634e54aa34f5fc0a2c041c
change-id: 20260224-knp-dts-misc-fd2eee5224da
prerequisite-message-id: <20260114-knp-remoteproc-v4-0-fcf0b04d01af@oss.qualcomm.com>
prerequisite-patch-id: afd581c1ad048b1b9d5cb13cc667a5efbdfd1bad
prerequisite-patch-id: 554f737dd82cedf873d73db34d735c95c28b9cd3

Best regards,
-- 
Jingyi Wang <jingyi.wang@oss.qualcomm.com>


