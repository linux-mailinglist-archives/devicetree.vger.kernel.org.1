Return-Path: <devicetree+bounces-245497-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 43134CB1808
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 01:37:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D6ACE309D023
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 00:37:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7689F1C3306;
	Wed, 10 Dec 2025 00:37:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jg+NfP2Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C27071AAE13
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 00:37:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765327059; cv=none; b=lEkGtdLm11stCuguSWE2lvC1Ta2JY7t303tbwVaBFkJlPLNQRQaFWec/6F2ygRGESO03/seWzzw+J8HRmUTfyMYY1Ca9VFM78KuthsRd2V6OPWU0vnWFOtZWRYsQqtHYQFcx5zPh7VQx5vYTka0XrmTgHILjKUAledboD+f+0x0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765327059; c=relaxed/simple;
	bh=K7SL4I/jLPDVOaIVbr+yXThL0SdIYhmyS5+E2q11BCQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Zhf2rdcejLEkXkf6FIp9kMabFgA4S9ZMurHC4EeIQIh1T2HDr7rdq+iQpkOzIiYu1e7bm5DHm1w1cviUgmD0RvIkZirSQ5t5SEIyoCI5pIZxzs4qwqvYiu8xowWnIU4NCk42kQ2pEjejaJI3l8cXpDJzZw6eLZ56ldOFBIUi98U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jg+NfP2Q; arc=none smtp.client-ip=209.85.210.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-7c701097a75so3777384a34.3
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 16:37:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765327057; x=1765931857; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=SVce6XDDwdhvebzxe/BKrWVM8PIwQ4nAIr2E3eOzxcI=;
        b=jg+NfP2QoCYdEl966aaeRC5omG8icNcB/QVKRa2aPZsXeonfqsATS+u/kRwEv+5KSL
         vDdaFPg7aU6QxStC4uy2B+EyOtt36+nRbsV9YR3NugAh/l6ClhLmxGkGH6X1X0gl4mtJ
         xJuEPjUSCxh68gY72tM3RTvo43YENpW9yE8zXlm7+8BeYGn+i5AEXjdz0kYzdtIkoqYT
         FyjJqjwOuygLiCjr518dtT/XzyBGmFNlo/XAk3d9J9cVlFwoMcrQ7WPZavkmQjadIScK
         e46N1CmeepapMJ3bzlgyXUHVXwngjUBy6d/VV9G1U/v3XW/nPeOhIZcq4jZkFmO1POyi
         awqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765327057; x=1765931857;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SVce6XDDwdhvebzxe/BKrWVM8PIwQ4nAIr2E3eOzxcI=;
        b=fvZ7BGvEFoXyVBf7VigOmX5/uhTOcmb46aOwCDzFRdUE4mlnNh2MtpK1YM8F6+6vW9
         DZi+GKV9dtHRilDFugI0sp3fsSMp9hLw1csJgt0bZaMysM6l0a91avhIlndHsh5B6wxU
         9bn8xUIj427JVNhpiARohJFhj0CQBV1CECLjI0GsJ0bgdikSFxOaV5wTRrReQRujl5C/
         G3SBppVhMM1PLHcqcc+qJPu56JapcTEpaSV4Pvlrto5VMw+1RZ1Bq/KHeOvHGBacWvfV
         RiJio/CUFrsU9xueIA5v7FKoD/koha0kjysuqlfkmR0/9kyeradu0yCp4JGFxcesjcCC
         5PJw==
X-Forwarded-Encrypted: i=1; AJvYcCXZRHE6l3GwiDeYT6lrp1gPGIGraemuNBZsgBwJHstoiKfnUxKyFVmzhRcTQ+As/YOtU9aZ3u8P9Wx3@vger.kernel.org
X-Gm-Message-State: AOJu0Yye0cf7cFuSHmqcu5QuzBRNyoPkh9STdjK0x9hqODeEL4+JfPkt
	EEMbBKd131FYhK7f3Trbi9xKVgf0jsf9AZlIxmB9mjCJ1fZFrM8nE8nD
X-Gm-Gg: ASbGncv5zoPE8OChz46JggbjsReVZvqzYMPM8aUdRiJSDs6jyEOpNUz9629EMEog445
	6gZ2c6BvXWRa0LY/TfXwC+7WC36ANosb+TY/vsplrNFjKQk9tmQMHhellnVKAMBV9ebVI94qOJu
	ufFU5flcmR94PkCeHogXYapQXfoWf6dnN4G+pjcmoV+tHpCDy5jvBrDF7g4OCaYF1sg1x8pZaU7
	5XZOStuJgrkWdteIMVI2NlT6dQBI/1crsJOY8kn5BtZWwsEJLnvlW7SOoDQrSAssUiqpYYFiMe1
	iU0t6CvOa0/4W6lNt3Y6FT1lsqi64vdBLeBryTDtY5mJtWfvUiebRjYcOjiD7xURKGPCqEYjSAb
	0zYm7sPknUPdm3KDu4c0Sxqefs33oAsEqlepL0lJqDiGeSwLbTCXKleYhyEchRGW3IGapEpuDfQ
	3wvjkFlBos0er2q+6LGpUQw0r/PPEfojrt4yz+H1s5p582xmfas1KKPKoywlIj9S2gEGGfzuv8A
	rwjOK3p1jGeRtB4UcXRM608dTI0+MDBH/mfKMU=
X-Google-Smtp-Source: AGHT+IEg65s3h9e8Yp05cjRdQ7oOeApFKAZof7ptzLGUYqrrlMeRO3TUWBgDrWjfg7jGq7tFMiGYeg==
X-Received: by 2002:a05:6820:1845:b0:65b:2795:cb0b with SMTP id 006d021491bc7-65b2abacf7emr471229eaf.1.1765327056774;
        Tue, 09 Dec 2025 16:37:36 -0800 (PST)
Received: from nukework.lan (c-98-57-15-22.hsd1.tx.comcast.net. [98.57.15.22])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-6597ea6807esm8588826eaf.0.2025.12.09.16.37.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 16:37:36 -0800 (PST)
From: Alexandru Gagniuc <mr.nuke.me@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org
Cc: andersson@kernel.org,
	mathieu.poirier@linaro.org,
	konradybcio@kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-remoteproc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Alexandru Gagniuc <mr.nuke.me@gmail.com>
Subject: [PATCH RFC 0/3] remoteproc/qcom,q6v5: introduce IPQ9574
Date: Tue,  9 Dec 2025 18:37:22 -0600
Message-ID: <20251210003729.3909663-1-mr.nuke.me@gmail.com>
X-Mailer: git-send-email 2.45.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

I want to enable ath11k on IPQ9574 SoCs, which uses the qcom remoteproc
for communication with firmware. It is similar to qcom,ipq8074-wcss-pil,
and I think it makes sense to extend the IP8074 path. The existing bidings
are not yaml. Am I required to convert the bindings to DT schema before
updating them?

Whom do I add as the maintainer for the YAML binding? Do I add my name? Do
I need to find an existing maintainer who is willing to use their name?

I would like to add the remoteproc node to IPQ8074. One of the resets is
missing from "qcom,gcc-ipq8074.h". Can I use a placeholder value with a
comment? Am I expected to enable the reset in code before adding the
devicetree node?

Alex
--- 
Alexandru Gagniuc (3):
  dt-bindings: remoteproc: qcom,ipq8074-wcss-pil: convert to DT schema
  dt-bindings: remoteproc: qcom: add IPQ9574 image loader
  arm64: dts: qcom: ipq8074: add remoteproc nodes

 .../remoteproc/qcom,ipq9574-wcss-pil.yaml     | 269 ++++++++++++++++++
 .../bindings/remoteproc/qcom,q6v5.txt         | 102 -------
 arch/arm64/boot/dts/qcom/ipq8074.dtsi         |  79 +++++
 3 files changed, 348 insertions(+), 102 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/remoteproc/qcom,ipq9574-wcss-pil.yaml
 delete mode 100644 Documentation/devicetree/bindings/remoteproc/qcom,q6v5.txt

-- 
2.45.1


