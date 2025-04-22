Return-Path: <devicetree+bounces-169381-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AFC80A96A22
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 14:37:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B126917E82C
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 12:37:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 794DC289356;
	Tue, 22 Apr 2025 12:33:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b="c8FZ1xew"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 838DC27F4D0
	for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 12:33:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745325208; cv=none; b=azVKaHntU7XGTy17FTFaY8tEqth1SDStQoFzPLIJain75ovr1vT/dvOgPim7Dt+tNopjh7aJiz9UNQR/H2xlPuCCqmOk3C4kWpLr2FZ5ryUcuanf8jCbde55nMrdvl2Xgsq5lNHiKhaAgkxWcNGoRnE92MmqsIA5e+DHqiJB+ho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745325208; c=relaxed/simple;
	bh=d1mUj26NDnBUlb5yI5UeZMAIfra5gC1dir4I7AU69g8=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=EAt9rEx6duA+6S16CYwzkLtqsUK7PwYCK4aoXLyt5bg3GP9FTqH35rUnDgutHkDYaZw69SI2k9ptk1Ybn/2uqyIj/CXHCOq0M0ORuNS7MdCdGJAf42VI4WqX8df3PezqexQ3CNEzsuM8Y9yrqqxoN9mSPc9XrFtdWOLDtY35FuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org; spf=fail smtp.mailfrom=beagleboard.org; dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b=c8FZ1xew; arc=none smtp.client-ip=209.85.215.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=beagleboard.org
Received: by mail-pg1-f179.google.com with SMTP id 41be03b00d2f7-af9925bbeb7so3272532a12.3
        for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 05:33:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20230601.gappssmtp.com; s=20230601; t=1745325205; x=1745930005; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=E6Yv8dy/LXRtnJqKWqNjItEnP+/tvKHfVuZI65RNG00=;
        b=c8FZ1xewE1CP+hNruVeE3y7urT1QVQrMRr4shvKYTpGsCHwLnmuAUmave/fcYWPs3W
         4/038M5XKiuIUvM2oKY3SJqeiqdZBqElHfA7dD9uLw0bvE/gOwEo/On221HsM7g4byAL
         YmuZUnRvknwpH8b75/OcQedZAD9q7FlBymkWZDqpA46lr6oLoHroF5+Kxm3dGc4LHebA
         N29okKMI7JQVdYiLHMP6tTAZaMnyCexVZgdA3MKW4WKfh/3OgAdIASpZ8hCuP5uwknB3
         +yCx3FdlNOt4+nSYIyAlPw+AXdfXRn1jvQmb9UAm1U+kJnhWcEPcdHU7UKu6ahu0oGrl
         A4zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745325205; x=1745930005;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E6Yv8dy/LXRtnJqKWqNjItEnP+/tvKHfVuZI65RNG00=;
        b=bxk2gHTdjq1FYSa4hj0X3ktI8Lrr3nKDSoO4Sn9lHOFvjmjYHCcZTBGCWEzcr2/ZO7
         mDQJ3FkRWOCMjNwSWFQOCQknDLH2XcNerESPtjOqJcEU/GugWTCRTmYsG21p0oDZpX5V
         Wrb7jNvYJbS4o9jsH+xT+Na6AokafRy/HrRfPlETGeu1I7vnguzTh3bAUZhsK6N1xstH
         ilpQ//gDFJl6ACF50x4SU/jWkV7zx/bh7oMZQq51np6xTsTOuT80WmFqxB6W0euoOwOj
         yFHQhBli8ImKI63UYy4WQhLSeCLjjIIDQOHwnahDACUqrMwx4D1nri2OsdJi5xorHs0M
         EeOA==
X-Forwarded-Encrypted: i=1; AJvYcCUy0wpX5q8m2xGTvJhM/aWqAXUQ+I/krkVkAAqcGOZ1eRGV1506t0dwR0XJAAQD62m/ZVRZXHlSrI8h@vger.kernel.org
X-Gm-Message-State: AOJu0YzIsPPh0hpZScyLudZIgsOEv8Lo0TlG/mXyMgi4/XkPcQNTJ150
	Lc9540/HQSC1zsXtrNyXgoqYztfZudP6UvYrxTcdDeLmI+t8DepIsbVsooCDGQ==
X-Gm-Gg: ASbGnctxbaSp1nS6hVS3pj1TjrBbmTOapA/Iwi03rJ86c0obc/lI8hfIxUiSiGIyMdy
	vXtIZkgzEgXwn8nRHaPMMmjvG8LnXmOHrYcLpw5uy6ACCz/lCFw83gaJ0sbHFXYyJOLaASYqPvM
	KTFMljS2TVj0T46D928ryKOvhh1XGOs3hPBX8Q47UbpeWLXtqKm002JiJ11rLDNCkEXrIdHmErM
	s60xfnoZzr8UNPZtbGIfM9Er93Z6mCFtjJ+gUh4UL9dD+6U07dIzU/yQYFTsgozkaTciqwO8iay
	dxqB/WCBhyHGl6wu0c0fB2mcgtKur7hTYMen/OcToPZajro=
X-Google-Smtp-Source: AGHT+IGhlup07gPArgxdYxxcGKBkNJ+E/sZ4154y9wVwSq0OQE+qQL+tXZJ7RlM9rOrwBQkGs03u+A==
X-Received: by 2002:a17:90b:4c84:b0:2fe:ba7f:8032 with SMTP id 98e67ed59e1d1-3087bb5324cmr25543239a91.9.1745325204674;
        Tue, 22 Apr 2025 05:33:24 -0700 (PDT)
Received: from [172.16.116.85] ([103.15.228.94])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3087df05025sm8484220a91.13.2025.04.22.05.33.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Apr 2025 05:33:24 -0700 (PDT)
From: Ayush Singh <ayush@beagleboard.org>
Subject: [PATCH 0/2] rust: Add abstractions for applying devicetree
 overlays
Date: Tue, 22 Apr 2025 18:02:08 +0530
Message-Id: <20250422-rust-overlay-abs-v1-0-85779c1b853d@beagleboard.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAEiMB2gC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDE0Nz3aLS4hLd/LLUopzESt3EpGJdY7PExGSLJEtzU6NEJaC2gqLUtMw
 KsJHRsbW1AHvymKxiAAAA
X-Change-ID: 20250417-rust-overlay-abs-36aac8b9752a
To: Jason Kridner <jkridner@beagleboard.org>, 
 Deepak Khatri <lorforlinux@beagleboard.org>, 
 Robert Nelson <robertcnelson@beagleboard.org>, 
 Miguel Ojeda <ojeda@kernel.org>, Dhruva Gole <d-gole@ti.com>, 
 Alex Gaynor <alex.gaynor@gmail.com>, Boqun Feng <boqun.feng@gmail.com>, 
 Gary Guo <gary@garyguo.net>, 
 =?utf-8?q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, 
 Benno Lossin <benno.lossin@proton.me>, 
 Andreas Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>, 
 Trevor Gross <tmgross@umich.edu>, Danilo Krummrich <dakr@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, Rob Herring <robh@kernel.org>, 
 Saravana Kannan <saravanak@google.com>
Cc: rust-for-linux@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Ayush Singh <ayush@beagleboard.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1499; i=ayush@beagleboard.org;
 h=from:subject:message-id; bh=d1mUj26NDnBUlb5yI5UeZMAIfra5gC1dir4I7AU69g8=;
 b=owEBbQKS/ZANAwAKAQXO9ceJ5Vp0AcsmYgBoB4yHl/ushgkYiNpxhNoC50PR4lYX2Xou5FMS1
 4tjMfy7L9KJAjMEAAEKAB0WIQTfzBMe8k8tZW+lBNYFzvXHieVadAUCaAeMhwAKCRAFzvXHieVa
 dO25D/47ApqBDuJeGAsNb6/gotpiTJx6jBJDfYXmZYBpAyt3qwQMtfiWGEB1lXgoJHEWqPAYZvG
 FzhURrhDesrI78JoWN+MyWOi8bvu92KnC7SwJ6B2dEl6fEjOdE5/mbtDoAomIWQjdrbe5YpWr9q
 0c29qm7WtNAeGEXYuskWnkQSACkd0+wnlwQwZcx0q0E2yWwCDijxLo54JGLns543qHrhflbQkSz
 YSkLiQl8V4P8SIuGPx3hdHV1P5vm/2JnQl2Ik6K7JTRumPJahkJzZHv1FEyXCCF6I9QiMbiC5NB
 tIfgKrKvLCitdddCp3tZV9JaPdXrNGZMTGJ17DI4PpD26XEI1nQKDv7AD2jrcVR8KndbaHCgeY6
 bd21hbnemBGpvAQhM1ZBSbBvu+Izg1XQVxRiT8JoSNOLgqjM1R2HwxuYQDFcEUsyvFiHqPVzHcW
 txbSkuhI4q4xvaw7PcZODVWPnXXttBPeTkLV+GnMVT6GpP6AUXs+PGq8rXEpxEytZopnKn71QJS
 mdcw92fTD0HAforSIDWm3BxHdI0FJok9C/e77Z4kZ2L086UPKWmQHXXwW5+dzGbRX7Jse77EnDC
 HL8YHOt6r9Ec7z6bOehzSZg6AKj4rM3ZZP5BViOXZ+jRh0dkYpE40SbBcZZdmQryHAGuW1HmjX1
 0jEWseGMunOyxVg==
X-Developer-Key: i=ayush@beagleboard.org; a=openpgp;
 fpr=DFCC131EF24F2D656FA504D605CEF5C789E55A74

The following patch series adds abstractions required to apply
devicetree overlays from Rust code. To see how the bindings look in
usage, see my working tree [0] for a connector driver  I am working on.

Open Questions
***************

1. Should `DeviceNode` be Opaque?

Since this structure is never read/constructed from Rust side, maybe it's
better off as Opaque.

2. Removing overlay on drop

I my usecase (see [0]), I will only ever have 1 active overlay in the
driver, which I will be removing dynamically. So removing overlay on
drop works for it. But maybe there are some usecases I am missing.

3. Only enable bindings when CONFIG_OF_OVERLAY is set?

The kernel header currently seems to provide blank implementations of
these methods when `CONFIG_OF_OVERLAY` is not enabled. But I am not sure
what is rust-for-linux policy here.

[0]: https://github.com/Ayush1325/linux/commits/b4/beagle-cape/

Signed-off-by: Ayush Singh <ayush@beagleboard.org>
---
Ayush Singh (2):
      rust: kernel: of: Add DeviceNode abstraction
      rust: kernel: of: Add overlay id abstraction

 rust/bindings/bindings_helper.h |  1 +
 rust/kernel/device.rs           |  5 ++++
 rust/kernel/of.rs               | 53 ++++++++++++++++++++++++++++++++++++++++-
 3 files changed, 58 insertions(+), 1 deletion(-)
---
base-commit: bc8aa6cdadcc00862f2b5720e5de2e17f696a081
change-id: 20250417-rust-overlay-abs-36aac8b9752a

Best regards,
-- 
Ayush Singh <ayush@beagleboard.org>


