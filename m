Return-Path: <devicetree+bounces-110708-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F86399B856
	for <lists+devicetree@lfdr.de>; Sun, 13 Oct 2024 07:23:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8F0C1B21B08
	for <lists+devicetree@lfdr.de>; Sun, 13 Oct 2024 05:23:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBC7B13A884;
	Sun, 13 Oct 2024 05:22:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=marek.ca header.i=@marek.ca header.b="O19POQh0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B3501332A1
	for <devicetree@vger.kernel.org>; Sun, 13 Oct 2024 05:22:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728796962; cv=none; b=jKLyrNh5UW0NeEHFHuy8zBNPzHhecf/P9rEBYscPPmIeeMIJyZvBPTJUSsL5U7q9f4Kc7sKqNiVFWYqQ+PGuos6YrOA16Rc6Yz5eBJ+ZGjhoZsbbqO16VfjdBUJHP1afrIRpuy6ZxxwzGJnbUbwBShhrHsgXXDDoUyB9e9a1kdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728796962; c=relaxed/simple;
	bh=gygbM/0TWbve0yTggoKlMNvknZTLgYXQh0HMHtv9mEQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=L9YpbqXQ1JXAtSy/rPUi6Oi6gLOh9oZwctCwU7Vh1D9F8S/jnX497+B1BJwvL+ZH2T/1dk/Jnvb5vJ1V4yN68PV+pbo85k1LSdoSkc1ZiuIWYyeuQXzMwiS0g8gwxOYsrpkfljtrUugDk9OM2QuJ3+Y9qz23eSaY/d1CVHqjlhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=marek.ca; spf=pass smtp.mailfrom=marek.ca; dkim=pass (2048-bit key) header.d=marek.ca header.i=@marek.ca header.b=O19POQh0; arc=none smtp.client-ip=209.85.219.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=marek.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=marek.ca
Received: by mail-qv1-f48.google.com with SMTP id 6a1803df08f44-6cc03b649f2so5103556d6.3
        for <devicetree@vger.kernel.org>; Sat, 12 Oct 2024 22:22:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=marek.ca; s=google; t=1728796960; x=1729401760; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0NvbtWswNjmMVigXav8simFFQPZnS0nT4PzjzHauoQI=;
        b=O19POQh0HY3gPsy5bt3wr5GIjOL+2mvm81hh+krMSXcmNDHhXC3n9zT+BQhD3SPfmW
         2+FnUIJ6n050F2UggFc4p65UmUA6fLeMhAsPnOl91ha+wJTLqCftKtGoypsz4qmkVNB1
         QJOMj847dcDBrTsy3TwzBLbDeZQcQHgVMEDdSi0wgUCXaXsnQJcqbuT7BJgKjHuUTzL2
         aO8goBXVj1o5ERqLNQoyffmSB+m2Cyi9UiACSVVDNCpqr7v1h1D8t52NIoNyTWu3weR8
         Ncy/Zs6+RthBtObFnWD5xB7RWcdqt6EUk2YewrvnTgxaO9/ltsktTHmg4dP/u5zTNvTO
         5oXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728796960; x=1729401760;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0NvbtWswNjmMVigXav8simFFQPZnS0nT4PzjzHauoQI=;
        b=xKO6c9uZwpWNcJw0L4sO2n3Ap1xuHLL4aJqGIPYY2TYQHkp980b4HRts76v5xBx0d3
         Lt18fWN2W7ss/btAh6Yaf31QOCEksu2efOwlwPA2noj5mjNAH3n9fzOI7OXka9EDbGKC
         vBoHUQ3s+2cKH0xBhjoW5UP5JKb9wyAqAft9Grk8ssK3DGiD9nT/8BuZVfl5lLy31Z93
         Nm4ZZmDtKmiVUsv0wPl+yN2UcJBc/fxRGiBMMQFdpCexMgdKsHZ8nMSvGFRl3PdA9QdP
         4OSeWWOlFJ0kIKukjHel72MHpjnDbNnEGD6/NY+me/M/ejgMSSyuqcntlZuJpudCwdBM
         iWdg==
X-Forwarded-Encrypted: i=1; AJvYcCXLRdfPY0CcV0Cmok8vp8/DVPNKi97FOX+219rPv5sf4zYu+tTvpoAlzQ3MnwleOf9SyzpQBK4WBpV9@vger.kernel.org
X-Gm-Message-State: AOJu0Yw68+ZJ5AztUADMwNAP+gISJV97R50orcrz1pvHPUzoOwp8Kj1+
	NXfrEi9LyIWkhifk0tZ3Q2300K5AJEgG87Rc+gNyyU2ph4RW3VOHb8Cx55xGEi4=
X-Google-Smtp-Source: AGHT+IFuz8C8fhCweOGUHpxhRS/dLI42qjf0yDlGdmaj1Wf+WcCRwh2Yemg/DnbCRpkubNZ3pmdL4g==
X-Received: by 2002:a05:6214:2f87:b0:6cb:eb9c:63c2 with SMTP id 6a1803df08f44-6cbeffa2c15mr104653106d6.15.1728796960240;
        Sat, 12 Oct 2024 22:22:40 -0700 (PDT)
Received: from localhost.localdomain (modemcable125.110-19-135.mc.videotron.ca. [135.19.110.125])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6cbe8608e2csm31821496d6.102.2024.10.12.22.22.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Oct 2024 22:22:39 -0700 (PDT)
From: Jonathan Marek <jonathan@marek.ca>
To: linux-arm-msm@vger.kernel.org
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Satya Priya <quic_c_skakit@quicinc.com>,
	linux-rtc@vger.kernel.org (open list:REAL TIME CLOCK (RTC) SUBSYSTEM),
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH v2 2/5] dt-bindings: rtc: qcom-pm8xxx: document no-alarm flag
Date: Sun, 13 Oct 2024 01:15:27 -0400
Message-ID: <20241013051859.22800-3-jonathan@marek.ca>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20241013051859.22800-1-jonathan@marek.ca>
References: <20241013051859.22800-1-jonathan@marek.ca>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Qualcomm x1e80100 firmware sets the ownership of the RTC alarm to ADSP.
Thus writing to RTC alarm registers and receiving alarm interrupts is not
possible.

Add a no-alarm flag to support RTC on this platform.

Signed-off-by: Jonathan Marek <jonathan@marek.ca>
---
 Documentation/devicetree/bindings/rtc/qcom-pm8xxx-rtc.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/rtc/qcom-pm8xxx-rtc.yaml b/Documentation/devicetree/bindings/rtc/qcom-pm8xxx-rtc.yaml
index d274bb7a534b5..210f76a819e90 100644
--- a/Documentation/devicetree/bindings/rtc/qcom-pm8xxx-rtc.yaml
+++ b/Documentation/devicetree/bindings/rtc/qcom-pm8xxx-rtc.yaml
@@ -40,6 +40,11 @@ properties:
     description:
       Indicates that the setting of RTC time is allowed by the host CPU.
 
+  no-alarm:
+    $ref: /schemas/types.yaml#/definitions/flag
+    description:
+      Indicates that RTC alarm is not owned by HLOS (Linux).
+
   nvmem-cells:
     items:
       - description:
-- 
2.45.1


