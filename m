Return-Path: <devicetree+bounces-151530-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 06E8AA461E3
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 15:10:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0971C1728DF
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 14:10:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 352D822155B;
	Wed, 26 Feb 2025 14:10:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="DeOZhNdX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA2D2206BE
	for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 14:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740579038; cv=none; b=lPNz9JSZA1G9P5ELign1Y3MfDVDwUMja9ZagY4UTmG+r95wyRqUfnahg7EL1h+xpm9ccNWxaLNC3t8MgkvhnpneCs14HtEhp+S6elRy77PkROwun0NOFkilTxpqjqkUUZls5im5II65eogioz5WUcMaQ9P6ZlZS1cbjiYTjN9cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740579038; c=relaxed/simple;
	bh=hUdgjR/RHMYEJ230+g45ik66o3c8rPTSefQWcBqffE0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=S87HSZ0j/Hg2iZdjDW1J+blTeFS0orEu1UXyyttW7iE0iFlHiQqTgDnoSeKUrYc5vtaCF+CVLZMBkNQkxVREjvCBjJX1mYV+FVxwj2AnSBaWqlZsL+wroc/jcof12Oa0ZhB891O86yhWAYwpsZw1FFsRnT7oRtB/58/5b/iGUfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=DeOZhNdX; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-390dd362848so437427f8f.3
        for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 06:10:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1740579034; x=1741183834; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6v2COQag385USHXDZetedSCoQTFZUjvQNehs7tzBwHk=;
        b=DeOZhNdXYJ0BLCNchdC3zPuh5engZ5KAccRSZuU5HlEK/qFmVJOdM1mk+KZJrlQHye
         GLMR/ar2Tp/V6LipuO/A5DhRC5r0O3S8fZcwh2Rc/aog7/7VZbrlPOI4uLRvsPjK0p2C
         jSFwizIu0ydRsfsBRdouuuycQLHvAOvsI41TEefFhp/7rUleRhzCSb/GP9JxJ00r+7uT
         nEA0ssVvwLz+Mgt+XY10elpypie2YDmu4iM0QW1IUhuhWZH0e5xjlZnanl82k/y4D6I/
         jEPbBe0RuUcb7jwPxD1xqo3GupikXR3p47ZlH9DEKb3K5kIS+M7oDtB0rwM+cFmHZdJj
         x0Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740579034; x=1741183834;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6v2COQag385USHXDZetedSCoQTFZUjvQNehs7tzBwHk=;
        b=uAmr459D2vICURBbgamVC4ssTq2qniz5cFO9Cj4hMZxT0cHjwHFlZJpYYkKKmp5/Lu
         Egp4q/uj8baPwRe7GwpFG+fEcC9wJIpjBag1SqWbB/1plNVCDnQjU3XGN0AnXqBoHQ+W
         yLfn5E5ndH0zwQlcDXWB0cNX0mccZg4iQ/O/rdNMGPeVUf6JfxaoiJYTPM4dn4aFEOa7
         yfzyOAJdP3jOAl0f5MftYZ6K18Xh+K/tHM73xgDEiNlPbicBZRfw+BmJIeAApqbjnWKK
         tluu332mRGGBLtRe+UwCBECsu6Ev1TdWUiwvE5UN8qGqDDDf4CtG9hmL/LHv7YaVsle6
         3J9A==
X-Forwarded-Encrypted: i=1; AJvYcCXChW4N9rvQ/oj/JhSuTVQyHSCcAyKZJfDNHljQj3ayHMpUVMyNvulAiXLQ7MqSxAiB4c/qO9m7niEM@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+qgjxSadPbzH5fLrrOg5JaIjfH//zLunIdGTAa/S272pUhWrP
	RW+048ALcPMJpV3BDFZLYZkkziSkcmDh3VoKwDDqclI+UvXdb75wthphRfy3A9g=
X-Gm-Gg: ASbGncuAGuMYZes0snPhg908eq5uKqKXr/QsEtDWsO6Ue4jurkxelArKvoMIRyLzZUm
	2DTvYIcyyQfdMEf/mEIk8OTSKhYc0QEOvkH6VSYooL7w4z4Hk36F3S6lZC6gnJMyKX2Sq2wI3+U
	9RpMckuUxlqiyr+K0KqLRqtuAbp5247EL+xMTl+lNtL8Q1baEpzYFdeSCfyf1QDtYDJQFsXIMTa
	MBiNHeJ6FqqLsy+vOCsHlxp2TiXTE+3tMLsTd/0xspQtLIJVE+AGSrT5C3NDqNHh7T9+Xfmvax9
	V4CO9u9mKLa5UfJExfcH3mNgNjCw/yY5Ctr4ET9LMfI5sXa/u9OYCArGnhkwWC5qxecx3GcWsX4
	=
X-Google-Smtp-Source: AGHT+IE4o+OfE2YSudEnTjsH/f3XjsEpd8AL7T6UbGEbbpXVQOECvonikWzyjtQETBsUiLsBsFmVjA==
X-Received: by 2002:a05:6000:1ac8:b0:38f:39e5:6b5d with SMTP id ffacd0b85a97d-390d4f8b64bmr2958570f8f.44.1740579034331;
        Wed, 26 Feb 2025 06:10:34 -0800 (PST)
Received: from [100.64.0.4] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-390cd70be4csm5755889f8f.0.2025.02.26.06.10.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Feb 2025 06:10:33 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH 0/3] Fairphone 5 DisplayPort over USB-C support
Date: Wed, 26 Feb 2025 15:10:17 +0100
Message-Id: <20250226-fp5-pmic-glink-dp-v1-0-e6661d38652c@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMkgv2cC/x3MTQqAIBBA4avIrBtQ+6WrRIu0qYbKRCGC8O5Jy
 2/x3guRAlOEXrwQ6ObIl8tQhQC7TW4l5DkbtNSl0rLDxdfoT7a4Hux2nD1q1Zi2kV1liCB3PtD
 Cz/8cxpQ+CQWT1WMAAAA=
X-Change-ID: 20231208-fp5-pmic-glink-dp-216b76084bee
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2

This series adds all the necessary bits to enable DisplayPort-out over
USB-C on Fairphone 5.

There's currently a dt validation error with this, not quite sure how to
resolve this:

  arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dtb: typec-mux@42: port:endpoint: Unevaluated properties are not allowed ('data-lanes' was unexpected)
          from schema $id: http://devicetree.org/schemas/usb/fcs,fsa4480.yaml#

See also this mail plus replies:
* https://lore.kernel.org/linux-arm-msm/D0H3VE6RLM2I.MK2NT1P9N02O@fairphone.com/

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Luca Weiss (3):
      arm64: dts: qcom: qcm6490-fairphone-fp5: Add PTN36502 redriver
      arm64: dts: qcom: qcm6490-fairphone-fp5: Add OCP96011 audio switch
      arm64: dts: qcom: qcm6490-fairphone-fp5: Hook up DisplayPort over USB-C

 arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts | 110 ++++++++++++++++++++-
 arch/arm64/boot/dts/qcom/sc7280.dtsi               |   2 +
 2 files changed, 108 insertions(+), 4 deletions(-)
---
base-commit: 417c2d4ed67b729abea7dc73d7fb2153b7154d31
change-id: 20231208-fp5-pmic-glink-dp-216b76084bee

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


