Return-Path: <devicetree+bounces-260095-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MOP3NYgReWmHuwEAu9opvQ
	(envelope-from <devicetree+bounces-260095-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 20:27:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D45499C82
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 20:27:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 15D4B3028644
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 19:26:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7432F36D4F3;
	Tue, 27 Jan 2026 19:26:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WyhRwKlB";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="AIHJncje"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5577736C5AC
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 19:26:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769542008; cv=none; b=Fj7bzHHFvpPk/pAzpHtHk7xzEkzFVXp1A0JGHxbAp8ZtjN9Q7JA7fank8H6ucQ82K2oKUdRGi4502Iv6cFsPVWHTQneyWf2UDHT0WTBRowfMBGX7xYh+FuLTFTgP23yHcarGqPyYumMONHKQI3DCxQlGMN7IWpi7g939XgMSBes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769542008; c=relaxed/simple;
	bh=+dxg2AYPWOBezbo/AusD04dPbtAzqmuYg8xU4IUzxDQ=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=pELw5lYVlNpZWZjYIoMrurT+0oJw+TEbOQWe9XQ8IsQDk1mdpGHzXppA8EVtElqQhbtAxRn0p+VQD5unEBpX2nbJUkZnbyYttNNP7dv3U0HdMre3m6+sHU/U53kmcs+Z/pOdjGzeewtU3s5zGovb2esRxCpVmih3UueF2iVhEv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WyhRwKlB; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=AIHJncje; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60RHVnqQ786330
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 19:26:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=orv3m8vsoj1ff5G3TkE7oP
	TvE8SD/wrAmlZy8rbZhHc=; b=WyhRwKlBrhVPfGxQGxXP6BPM6hvNZ3bx7rh+Fh
	plcnHu5kPWu9XdXjDWZXNt4ijXUenoaJkzTD4fbjvS8J5EtiRO5UUy1kGPfGtNC0
	ltDju2N/4NpWdReO1u33GlWTrmn7TzU56LXuHVsbKXTzmAU2x7mIl7+kgr0ppmUB
	Noq0AnRVRP5cHhZYalRpOY0m3W6SdqvZ3FLFvV0/CwvLBrWpxapSvAVs0LRDDFq6
	llpzCnKXSSe7wBcycfFKlLt5QqGyj4ssoCvFROa2ZhJdgS62Co7JkF1293fgNKa5
	kymRANPJJ6/2O3eINOeuG243ScU9koIxJyHW10nPGgcvTM7w==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxg93kye1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 19:26:45 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2a0d058fc56so43656735ad.3
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 11:26:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769542004; x=1770146804; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=orv3m8vsoj1ff5G3TkE7oPTvE8SD/wrAmlZy8rbZhHc=;
        b=AIHJncjeVpxqukxGHuPXii7RcuQ3Mg/U27Hiy+78kHGiWHCecZjsvYpgkIIMxUYPGH
         rbhIUtAZeTt2Scz3L8tQPgftTcH1fPPpkHlmCohsdlQUjFwjSy3bHgGOeMQ3GbQykP2r
         0QMtUsh7FV28g23XxR+LpPfRg27ZovjNM+dW316hhQqtuNHBfHMSa/STsKZBY3bwmLFb
         GVx2hY2h6LVGcSYEquSiZNBbm2Yvf4EYBtWzK/Ps1m+zInklCoNCT4KDOb665yo96Cqd
         BCxJsRJUgopeD1rcVji8ow2cMu9jE/2mj9Ag3vV7xMdVYFys+PLgtOWylC5Fz6J/gY0U
         4EXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769542004; x=1770146804;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=orv3m8vsoj1ff5G3TkE7oPTvE8SD/wrAmlZy8rbZhHc=;
        b=WyGWwMjFNW26M0J1STczPfo/PlZ8F7vhTHr/e/AyNnMCzy8MW5xW/fr8kdxY3D+Uim
         pAbUgAoMnTMHZRGIro0uxrdW8H7QJuMzo5J8gdRDID7tDdf0NaK3o3WZviU909grk8G/
         W5fl/Q9auovCIgHS0IYLmGmFm/FnPTE80WdzOV9TmMLKtblZ+9xalcxJL/Yjo4wjXccR
         roqJ4YdklCzFk3vnU9UI8gnxcwEaseTHh/1s0ACyakthXiMSJDS6cuX59T/ro/Qr+UO9
         yRtyN6FvgynU76Ye5bdLFyo3ede5Fl04/UqwRX6eMEP85R2wcvfScvRa4BkdMh3/YN58
         S9EQ==
X-Forwarded-Encrypted: i=1; AJvYcCVMdDIdLD0U0dmW58lvQdtCXpvPjJQLARd/Q0rxw7ISpGwdDpRIMb3QC22uskUEaPob3GCSijENgWEr@vger.kernel.org
X-Gm-Message-State: AOJu0Ywa7B0S7U1i0A0/90AsrDceaeLQZnzVCfXaUhC3QmqEM+asHAiy
	gsYGnKrMYS0rnHq2++JvoTsegjwQNN/g3GfiveiFFRsF3N4ZGY1lM5VbRDvOmE3vRSaGJLeqWYX
	vTNQ4G9YUfmFN836RYIc5MnLbJmB10N9JKrJ3M7vN0cOmwu00t7VphEQ9Va3Jtnon
X-Gm-Gg: AZuq6aJUqyJQmjuERAC+o0H/oT+Wq8kQ3ErV+Pw6qWvJ2kUgWHYbk22hzvb68+WDqjz
	MQFAilvl3+G+4sC95OsjFeBWLfxrzvxQVroaS1aoHQH8TcUrYD2oWXQZQmyefNlJnVpy8EQdXku
	56IT1B0dZUfb71obsK0guZE81IGUFfZllZ4a1IMHAc0YNLnctbQVLrrbV+kEjQM3XcjQ7z6fY/E
	cZ0n+3q+nO3KQI2BQUOK2mA20mTD3MjcfT3skkTm7dxAw/yoyjcJqeZbuo78vky2orwnA3mHLgL
	NKlj1DvHtp5hG1RnSTZV/nOtLtZWQdwG/HqBmjYgLdF/K229jHfEh2eDAdNUSn2538IqE6Y5pvk
	f6oOuY8gDIbQxCDJoP4I9bDbtXbaz582h+oPzjV3f
X-Received: by 2002:a17:902:d58d:b0:2a0:b7d3:eec5 with SMTP id d9443c01a7336-2a870de2f61mr27623395ad.33.1769542004113;
        Tue, 27 Jan 2026 11:26:44 -0800 (PST)
X-Received: by 2002:a17:902:d58d:b0:2a0:b7d3:eec5 with SMTP id d9443c01a7336-2a870de2f61mr27623025ad.33.1769542003644;
        Tue, 27 Jan 2026 11:26:43 -0800 (PST)
Received: from hu-jkona-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b414fc4sm1322225ad.32.2026.01.27.11.26.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 11:26:43 -0800 (PST)
From: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
Subject: [PATCH 0/8] Add support for videocc and camcc on X1P42100 platform
Date: Wed, 28 Jan 2026 00:56:31 +0530
Message-Id: <20260128-purwa-videocc-camcc-v1-0-b23de57df5ba@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGcReWkC/x2MywqAIBAAf0X2nLCJFPUr0cHWrfbQAyULwn9Pu
 gzMYeaFyEE4Qq9eCJwkyrEXqSsFtLp9YS2+OBg0Ddam0ecVbqeTeD6INLmtEJFb7GxrJ56hlGf
 gWZ7/Oow5f8qzzidlAAAA
X-Change-ID: 20260126-purwa-videocc-camcc-00e709474bef
To: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDE1OCBTYWx0ZWRfXyYZp2vTcc7Wk
 +DHqR97wT47clZtL+HBFY6YAVZrsdaU/MDwTXg++cYHAcKoarAMPi20hYBFbVL3UtJ1rxtPyDNA
 dwXVmBanrhToLr9OlT62HkFXWORGwv/zuzegaGnR23e8ad4eeSPwSmMuAYFLlk7xJbPAFf6ZiGB
 MNP1mpm7yb4nxGszN8ORF7fxaiZ6eIMvDg7X5UZwMRWjbvNQEjqIyK9iFT9mYE+9LXRV4dFgT80
 GG4tS387CSlF1Zmo/6Qd8XZGbV+i6ck/s0YvjvEAdY+tjNzisNYSzsOVEbp48ETb0y9/6/n2liS
 CIeFYw7C01zWKkmHaSUO/PPjxASWkzw7IHFDguZhItCWK5p/w7mxfzpnKDr1aSxrfdEzjigFmhm
 I6OUm66eHn/MjI+wL4cqyX1hmn0xf0C7yItTlQ+1+jnLgPpqdczwov/k272Jl9ZNyMh7PJFVmSC
 YKpn9ZCYAprfgdvyDTA==
X-Authority-Analysis: v=2.4 cv=Uc1ciaSN c=1 sm=1 tr=0 ts=69791175 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=bl4M-8LdCsxBmHb54JgA:9 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: bWBEijknV4_s6WNdti_O0JUVagqDwOck
X-Proofpoint-GUID: bWBEijknV4_s6WNdti_O0JUVagqDwOck
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-27_04,2026-01-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 clxscore=1015 priorityscore=1501
 impostorscore=0 malwarescore=0 phishscore=0 spamscore=0 bulkscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601270158
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260095-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jagadeesh.kona@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 6D45499C82
X-Rspamd-Action: no action

Add support for video and camera clock controllers on
X1P42100 platform.

The purwa(X1P42100) platform includes the hamoa dtsi file
and camcc node is already posted upstream on hamoa(X1E80100)
platform in Bryan's series[1]. Hence included the camcc node
patch[PATCH 06/15] from Bryan's series[1] and extended it for
purwa(X1P42100).

[1]: https://lore.kernel.org/all/20250711-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v7-6-0bc5da82f526@linaro.org/

The camcc node was added in x1e80100.dtsi in above Bryan's series
but moved it to hamoa.dtsi in this series to align as per the latest
changes.

Signed-off-by: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
---
Bryan O'Donoghue (1):
      arm64: dts: qcom: x1e80100: Add CAMCC block definition

Jagadeesh Kona (7):
      dt-bindings: clock: qcom: Add X1P42100 video clock controller
      dt-bindings: clock: qcom: Add X1P42100 camera clock controller
      clk: qcom: videocc-x1p42100: Add support for video clock controller
      clk: qcom: camcc-x1e80100: Add support for camera QDSS debug clocks
      clk: qcom: camcc-x1p42100: Add support for camera clock controller
      arm64: dts: qcom: Update compatible for videocc and camcc nodes on purwa
      arm64: defconfig: Enable VIDEOCC and CAMCC drivers on Qualcomm X1P42100

 .../bindings/clock/qcom,sm8450-videocc.yaml        |    2 +
 .../bindings/clock/qcom,x1e80100-camcc.yaml        |    1 +
 arch/arm64/boot/dts/qcom/hamoa.dtsi                |   17 +
 arch/arm64/boot/dts/qcom/purwa.dtsi                |   10 +
 arch/arm64/configs/defconfig                       |    2 +
 drivers/clk/qcom/Kconfig                           |   20 +
 drivers/clk/qcom/Makefile                          |    2 +
 drivers/clk/qcom/camcc-x1e80100.c                  |   64 +
 drivers/clk/qcom/camcc-x1p42100.c                  | 2223 ++++++++++++++++++++
 drivers/clk/qcom/videocc-x1p42100.c                |  585 ++++++
 include/dt-bindings/clock/qcom,x1e80100-camcc.h    |    3 +
 include/dt-bindings/clock/qcom,x1p42100-videocc.h  |   21 +
 12 files changed, 2950 insertions(+)
---
base-commit: ca3a02fda4da8e2c1cb6baee5d72352e9e2cfaea
change-id: 20260126-purwa-videocc-camcc-00e709474bef

Best regards,
-- 
Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>


