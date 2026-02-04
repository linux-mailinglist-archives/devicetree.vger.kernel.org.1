Return-Path: <devicetree+bounces-262751-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ICcVCCSFg2llowMAu9opvQ
	(envelope-from <devicetree+bounces-262751-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 18:43:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 38BD9EB116
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 18:42:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4105F3002506
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 17:42:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D35F534B697;
	Wed,  4 Feb 2026 17:42:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ph0Zwv2I";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QTzvtXoJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 969B3340A46
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 17:42:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770226974; cv=none; b=oPmIJDqFK2gJ+qO3QKhtev+LKKSgh3moBcj3jAudJTxS1b3Ixs9fojxrBNcuJZlN/J12vq00V6QtUZtgDvOqii94AguTwB9rZNdHH4kfJCSJHo50UnsB8v3wocnAwUJQ5lSkZK+Vsd2SiE5LzPr83WDKIqRr4KM4f3fBbetiE0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770226974; c=relaxed/simple;
	bh=lxAoslCoGfU7do1qJxQC7CExg6SOCvzg3I3OOrDkREc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ZCZD8y7mLGL9jdSm3iGFV/OO9p4ThekcY+ngItAEP8WVTCc07A+r+SgYL5gAicRsSUEO5llEXUOHXuM50OzKxRCOPLTmeRiw6GryVlNOgnMrk9vUSx2l68gSdO6BuCUx3OLwDM7DG0UBOMYg+GvWuazeLGdN5IDVSpisJfgvl54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ph0Zwv2I; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QTzvtXoJ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 614CIO1D787448
	for <devicetree@vger.kernel.org>; Wed, 4 Feb 2026 17:42:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=7zWGsz2dqtQaICdB90yHQ9K8yiLD4YIaOfG
	q4qsMxSc=; b=ph0Zwv2Id0TsFqjU04PBDuimC9V9Pe1uEYvuV0sN2BWKrk5sJD9
	rzm+exKmCEox+9YFExbjZ4bSm+oa/0yW6iD+y3yQN+8dzMTIovcZAMVLQY1tS6ch
	sCZyVg7RlEOZWQrVWkBf/6wYT43ekVe2cG8E2ZI41ffZ++O/OTrfhYGFqrdRWXjV
	BSFVfITlqsfL6JV4Vphkk2QvqJ4lACaqA8Pe3CUUUa3qzIdSfCuxazwuHkMBmFTm
	5oHk9oee4Td16YR46ap7LN1ajFQTpKf9XXli9EUu0ED+Sier/h7hDy+/LrlNMCEL
	9pcoa7rNHEN43H07q7oE8uUNZYL05uQpf1g==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c43uxhgc9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 17:42:53 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c6a87029b6so2109109985a.1
        for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 09:42:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770226973; x=1770831773; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7zWGsz2dqtQaICdB90yHQ9K8yiLD4YIaOfGq4qsMxSc=;
        b=QTzvtXoJiMYhLLsdMozGhiCRCOdL+S9X+Dphki94sEk7P+GhqkHusBVu3g4ry2M2Fu
         TCoyP5Ep7IvustxtrnsEuBkV8J01fRDI/iLteXK0hQaEPtjE8b1eyu9pbLxj4A/6UM5A
         9hhCwVXplUPWytiFgCEAsRrDyXkZvAYccSDd1Ambxj4J3xhhUleK9DBjK4ffMo47Y9yu
         Pov03dCpzonVAfa8YLKnYnJt7B+W6VxzrgD1tYS6Q77bDIC+rbJEbgq3Hqp8hCnbSHzj
         6B2+CUAxNVV5yvPcmp+bYq7b3TACB3z/GY5dAKACl8uW6WGpBS+ScCUtIzBNE3n6y4D6
         f0bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770226973; x=1770831773;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7zWGsz2dqtQaICdB90yHQ9K8yiLD4YIaOfGq4qsMxSc=;
        b=U8+Ad8WZBaTX+aHq3wlw71Ymow+76hOvdq2rHFHYcKLJaF4YODDpZu0pEawP2KVJMJ
         8/ktycbRYZiLuIXmZbc8qX3PN1fn3aAPFFvAwwkS5QWRPKGBfERDKkiaeIos6t7F6WrL
         BCn+UU9NKxfAGMXyp4osSMpZVra0TyavX6PXqGzATUOc4fEwkqWWmkS9dxdIzmSk6DAh
         Aw4yldadjM6VJiJ6uwqcco7qBFzcHNAwGpPBNMTEwTgllriHoX5aaChDIvNRRD4FC1/c
         6gDT6CcrmnyIc0ma1z4NfWN6QvvloP3zjafXUOsErx7CjfONWDPuEz8EB1v6TNQUPgVE
         1imQ==
X-Forwarded-Encrypted: i=1; AJvYcCXZK3nlW7F6WuBtinYmg27H9kQkejI5IGkBNOXvUHFu5OeVjG6HfpsGLdM5JO4bBknCf3MjlovypbzG@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5PJyRjpqqUkpbDJqmwFCEnNb5ttmutu18aE6OQkuLjKQ6f4kM
	+9luREALLnEvzXRo8GdVfBBFX+jdYkzqFE2MZtjD7wchhktXV7DUYQAHnV0UQh6iyqlOq3Kog7D
	7S7Js/AWxyjEPLQXfKkMaRkfRAPgbOg38uNFQnieo5OdUbsrrn+Ep7/W3YRRYR5Ws
X-Gm-Gg: AZuq6aLjeZ1v5V9eX+ANO5FzQYHBSZzBzszBT9Fd9DL/t+KGAP/SEmuvedFxW3x8t6L
	J32Hmnq02Zr4VYpqflbO5b3HsHlKGbX1ujOWI4pmv7pXzCySqh7EgHdLccI4TlHLsasfBUegTes
	ZRCQDVdzpauW3dCmE7DVNbwUJtpn7V3u8PAyvmlaGWjdg6ybVjp3B3b35C0DQj7dkxkEfzh+YaA
	Ac5vctXOFv3WuHbHvfUHsL1Ac+xU0WshLyyqK08VBfe2dDmhsTPInTwHJktsyv8d98ZGj+bjPkq
	TfEtHZRhhaQiWKvciz5b1L2BTEPRum+X6uHwlckFXnOoduiOSD5g4E1jvK1sQjZpxcS0b0DtVDC
	I+wf1KeszJqafq5bBAWE2MlM/IYyB6YZce8go5VNuyRI=
X-Received: by 2002:a05:620a:3715:b0:8c6:a8f8:9645 with SMTP id af79cd13be357-8ca2fa6cf98mr486520785a.90.1770226972904;
        Wed, 04 Feb 2026 09:42:52 -0800 (PST)
X-Received: by 2002:a05:620a:3715:b0:8c6:a8f8:9645 with SMTP id af79cd13be357-8ca2fa6cf98mr486516685a.90.1770226972431;
        Wed, 04 Feb 2026 09:42:52 -0800 (PST)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483179dbdcfsm959985e9.0.2026.02.04.09.42.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Feb 2026 09:42:51 -0800 (PST)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: andersson@kernel.org
Cc: linusw@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, konradybcio@kernel.org, srini@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH 0/2] arm64: dts: qcom: monaco: add lpass lpi pinctrl 
Date: Wed,  4 Feb 2026 12:42:35 -0500
Message-ID: <20260204174237.2906-1-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=StqdKfO0 c=1 sm=1 tr=0 ts=6983851d cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=tLhI3IazSDFM1hWFGSEA:9 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: 7tmEDpIbzopGyqmYynjS4ogZEVKVr3bh
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA0MDEzNSBTYWx0ZWRfX74eL/kBiVjsx
 jePdtIXZdWjQCMgyA2EdocW7SPT8D3hKKuJ3CC8v793jV4lhjrbwjHMDAKyzPtbPRFIMDXvVrzl
 v1CJ19JzDn+Yv7RQXg7oqcKjMEL1uXjaITQiXtOWfy5C4lV1++rDBO2qYZq4A1AGm9YhpPl5Rvb
 duGXW2r7pOOgme05xbIRVpZRG1wHFhc4clTQWeKavqvedLbrxCVhdUORdc0+UvrKQvsLylnkDmX
 E/yia0Pg2SpEOv5EwyOBNYqzB4qo7Sqhsahq0jthOE1C3YFWyFK3LIrNy7aEdaKFGUX/krZKjH9
 kVKoJDbMlSfcxer51f7TXb0i8NGy4qr/8++KBXKVD1jMgxdp53l17rZBPBPHL0o8DaY1MbNUZue
 qZ05QfceYz3quWnh65hzJJBJ7aFgvNosvPF258pC/grFOvU5uFupp6f6WTru94eN3qZtaUtt209
 ap//3ptyYTG4pHWUMJA==
X-Proofpoint-ORIG-GUID: 7tmEDpIbzopGyqmYynjS4ogZEVKVr3bh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-04_06,2026-02-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 suspectscore=0 spamscore=0 lowpriorityscore=0
 priorityscore=1501 bulkscore=0 malwarescore=0 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602040135
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	SUBJECT_ENDS_SPACES(0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262751-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_NEQ_ENVFROM(0.00)[srinivas.kandagatla@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 38BD9EB116
X-Rspamd-Action: no action

This patchset adds support for LPASS LPI pinctrl on monaco which is
compatible with SM8450.


Srinivas Kandagatla (2):
  dt-bindings: pinctrl: qcom,sm8450-lpass-lpi: add QCS8300 LPASS LPI
  arm64: dts: qcom: monaco: add dt entry for lpass lpi pinctrl

 .../pinctrl/qcom,sm8450-lpass-lpi-pinctrl.yaml   |  6 +++++-
 arch/arm64/boot/dts/qcom/monaco.dtsi             | 16 ++++++++++++++++
 2 files changed, 21 insertions(+), 1 deletion(-)

-- 
2.47.3


