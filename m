Return-Path: <devicetree+bounces-190181-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AA1EFAEAF4E
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 08:56:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C9FC7563B2A
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 06:55:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4D3021A459;
	Fri, 27 Jun 2025 06:55:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="VB/lAK4v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4527A217F2E
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 06:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751007356; cv=none; b=Xb73Q1huDSEyHUET8/mJPONxVb0tfDdjBNx9GLvBl+0jRXkLWYTzJbwIabJtWJcYM3ioxdEh4Z1GUD5FQ9R68kYglzeuGXy2i3kv/TKmLnCdETZpk3w8hAoF4VlciK3S2uLJDy7vvN2WjwtNsTLRBg8U3jjBxHSQBFnrOeMS/O8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751007356; c=relaxed/simple;
	bh=HRKYSDD5aEl3fpXcNcNVmNhnN9+cdeRs/Hjz67cr70k=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=PZivwu9STE6nZOIwC8WIH4ICvDcf8tMYK1iPthNxm2uJRg/hmgBGi2T+FWGwJzcE1kXZDUQgHhiHup6EJr8iGNJOVqa/C+km0TAc4It/4CZXmuDP8rlr9WwwQaSKI611w5m4MOUFcqw1wo995oNFzZqXPxvaIULokTkWOpLxIpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=VB/lAK4v; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-ae223591067so138292566b.3
        for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 23:55:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1751007352; x=1751612152; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6OyVyTnLvcUYUCVnJmVzdUrEtcXIeCg0NCslSbzPGUI=;
        b=VB/lAK4vM7G3sAZEijjfiWt5SIZBy9pfIRGW++FiO++auOKOvSXUCXKzXw0AvYL9dN
         oSAMsS7ViwEYtotB9aVLNpuA6QBJdBPG9mOXTksBDn6WFp8bZmZYtHIfv+ggoXSsOebM
         7tmMAIkNkJ/ElZm3BIx7ol/q0a6hWrlts/LJYYqv/XOJTUDAQjnXplDYNIXX0OANqno5
         hSeSOgl8KoR979VOBSRUjgXE3Fj2/j4055HrlgBF+FNrfNqdgkvJCrnVCE7FVdgqXIyQ
         PCmnVQu7z7B/nCfHqg2b0p9XYWS6mKpJGqVk0wndAbFGX6v6oNIp1RmxeCid+5KyVgqx
         JqPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751007352; x=1751612152;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6OyVyTnLvcUYUCVnJmVzdUrEtcXIeCg0NCslSbzPGUI=;
        b=XL/PBmytVqx4GEV5C8jpuaABaHlxFZixgYvGFXuc4iuN4Nk96DdR+qQdnN4hU+TOxn
         7+D5avFqM4QMP/Wp6tABM3g6bRpjp2G8frOdILnuDvWZ1B3kuPC+aEdyIzUrJoxNTHow
         QYwxU6+udGvR9/2kf6J3dFtZeagyC4kJG85IgkR2LfXRAvXVVaP6xpItIhUHRh9oWyAC
         +r55MeW2h3/wrYBtL3xWUFfnCxm/NzlALjJT/fjuZ2O7fK6Z26IQXaEoe7R8t2Z3dgXH
         3k4hYc/fuOv+a6dgewToYWGaqQ9RMUS93GbyCb4MIoIs+Afvx5H8vv8LKwESgmMXTGke
         Kp+g==
X-Forwarded-Encrypted: i=1; AJvYcCUl2RnL239CpYppIjS7qfwU492s5PpK903JSAiByBfS3EmAD7WqJpVIJdVtORl7efNEoGPZ/Vq1MIvI@vger.kernel.org
X-Gm-Message-State: AOJu0YztvLuNmmqL8+cLJmAw5XOr6ANU6phLh67duipUDxc0YtyO47Tu
	5Pi8YRVBWEkwfyDcC5onHeQD1imBsHAiVlFK9gEfD0HR98l+QDI0U4jIFv8ZWSx/SJ8=
X-Gm-Gg: ASbGncuKbxd3rHUvLt6Z5uNSt6kbfl49KGB9KEgYxukW8H72xqPqU8qQYikFsVKwDQi
	ghUQZtbhT2YB8WOi8AosVm27j4jstVE/j6Lq+ZIrR27WWvwTOIs6u3jRD55X42166+f9WzM7yhk
	9PCCKcahJIVrl6yMfU4CH7D7CqWhf3uuuf02b3keYMudWFe0cwyIN9S0pm9bH4AgpPTAfzcYWaY
	dZ1bNGpuXJavATK32BOSwQbh1BUJ9STIIz4GSCFOJdDvw4ZM7CYzF+qGgIlQzgjscoN7P8T7onm
	iFPz6ey1NlVj0j3pf8c9sivkiEXTGAn196lC9tDvCf+FeEOA80DWQuM/kxtsq2GKxEg91D5lb4L
	tG+MnjguH8zZf+iZTmPDncT3apWqfPwj9
X-Google-Smtp-Source: AGHT+IFjnOE8NEuOzdjShiuz1TfX1GtkNhAVAt609Dn5g7Pd0R6rLxmR5Tj2cwmvAKPv7UsDwUE7JQ==
X-Received: by 2002:a17:907:3c89:b0:ae0:d903:2bc1 with SMTP id a640c23a62f3a-ae35019f2e6mr171046566b.49.1751007352601;
        Thu, 26 Jun 2025 23:55:52 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60c8290ffb4sm1019451a12.36.2025.06.26.23.55.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jun 2025 23:55:52 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH v2 0/3] Add support for remoteprocs on SM7635
Date: Fri, 27 Jun 2025 08:55:41 +0200
Message-Id: <20250627-sm7635-remoteprocs-v2-0-0fa518f8bf6d@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAG1AXmgC/22NQQ6CMBBFr0JmbU1b2oKsvIdhAWWQWUCbKSEaw
 t2tJO5cvpf893dIyIQJmmIHxo0ShSWDvhTgp255oqAhM2iprXRaijRXrrSCcQ4rRg4+CWVuQ+e
 MrE1fQx5GxpFeZ/TRZp4orYHf58emvvaXs/9ymxJSVKUcXG9VpRDvY0ccp7Dg1YcZ2uM4PuKRx
 qK4AAAA
X-Change-ID: 20250620-sm7635-remoteprocs-149da64084b8
To: Bjorn Andersson <andersson@kernel.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1751007352; l=986;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=HRKYSDD5aEl3fpXcNcNVmNhnN9+cdeRs/Hjz67cr70k=;
 b=pH1MuTyeCcISIwj8Evc1Kddyilr/htJ3i7P0g83fcN7B7VvBPn5+W5za7kTR2IJUmlQc5yJgO
 jM5GlQbE+RkAuwkGek1ngqy0p+uMBqjrAOkKxBVRZgkJ+P6UqqgG/XP
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Add the bindings and driver for the ADSP, CDSP, MPSS and WPSS on the
SM7635 SoC.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Changes in v2:
- Update default firmware names from .mdt to .mbn
- Link to v1: https://lore.kernel.org/r/20250625-sm7635-remoteprocs-v1-0-730d6b5171ee@fairphone.com

---
Luca Weiss (3):
      dt-bindings: remoteproc: qcom,sm8350-pas: document SM7635 MPSS & WPSS
      dt-bindings: remoteproc: qcom,sm8550-pas: document SM7635 ADSP & CDSP
      remoteproc: qcom: pas: Add SM7635 remoteproc support

 .../bindings/remoteproc/qcom,sm8350-pas.yaml       | 19 +++++++++++
 .../bindings/remoteproc/qcom,sm8550-pas.yaml       | 37 ++++++++++++++++++++++
 drivers/remoteproc/qcom_q6v5_pas.c                 | 24 ++++++++++++++
 3 files changed, 80 insertions(+)
---
base-commit: 19272b37aa4f83ca52bdf9c16d5d81bdd1354494
change-id: 20250620-sm7635-remoteprocs-149da64084b8

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


