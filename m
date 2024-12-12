Return-Path: <devicetree+bounces-130284-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 50B339EE7F8
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 14:43:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 85DCF1888A66
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 13:42:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88E482144A8;
	Thu, 12 Dec 2024 13:42:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Z6/oIFLQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09FEC211A0E
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 13:42:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734010970; cv=none; b=JbxK9Oq53sbfFCFhabZVXqcDvf2Y4/DPEjT22RLV0PkzdPr6jqkhyp+9C+y+uWne9O4SN1Fg1/0RgePWaqbzp7BdWJ6KWcB2GUSnWwm8SgpYfn/ALZ3Q68qmmVbdX0yuTUjF03XUe0ViwgOFgUMDQ1eW1S5WN2CIM+wP3Jb7oec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734010970; c=relaxed/simple;
	bh=TJaPEhN5dPL7qghbv4Shmz5FEwWiDm5qF51LO8/zbYw=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Cc:Content-Type; b=gFHWerZ92Qex6endXVZLlKKPJE0p+xWQ/IacUdoj8rgWNm9qrG0ChTFRZpo3ZfLl+HwwzwL2+MUR1XTM8W88Vqo8u9FaupBCs7SiMaLhaIwMlWEAA5abe7wVlRiSX4Ilqrqa+rWrVxAkUQncjy8S9SQyQjrIqa1Xbuq1M+Nk9u8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Z6/oIFLQ; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-216728b1836so5643025ad.0
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 05:42:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1734010968; x=1734615768; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ioEgptBGStQecowb8hsxs0yHbIexmBpWuNeY3q3dqBE=;
        b=Z6/oIFLQOeiNsDK3VUaspzcPN5FfO/Edq712dq0i2Dx19Bm+CWe86/QMWnYIVTqzTR
         8TFh+evT+RpY+34bbMkTE/JIRIv0l+VVz/XMTmZWv5KHO07ZpRWK5glQgpHD8Kva9vRh
         2ZxSg+HQ13lypE+6Cmfo9sncNI/xqIOztVGMk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734010968; x=1734615768;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ioEgptBGStQecowb8hsxs0yHbIexmBpWuNeY3q3dqBE=;
        b=gzUiMufclcWl9awbxJzwCjGpomG0c1mywMiLhVHi/ME0WPGtL72Zbn8skfWqwb++Fy
         asBfLwkfXH7qLlMVhO2nfrwZloHLoPoFBAZ8wiNAQWqZkuD6ZZXAPIWT4IQ5GjATy3ez
         bFggsEUCNLYJw4ACb1SMGb7OGVZHxR07HNCdGG95P73VhxiQ4VUnr+LKmgCCwn7YVEFO
         QbVT5s4Q7YknPFoHyf+9q8f6kG9eU3JZkKSIvxZuEg52W1blvhV8jdLF3u46zUy5SZKq
         CE2pXgrkRMZQnEoETQpI+LhY3/8DjRfeSd4gFr1Zj2LIm8T3GxnHoo6diM6Pm0Zhe64O
         fE5Q==
X-Forwarded-Encrypted: i=1; AJvYcCXEwWy4Mfl4Rdff4h0IJSlmofX1R6OP6mLPSAhuxhtjZJKkH+I1SZklleCjKgyaj67Hda4hY0k2ilxB@vger.kernel.org
X-Gm-Message-State: AOJu0Yxt40LE3jQjws4kOkpSPdk+nfRwNtzKRv+PSfaAGz0GYIDadkWv
	aw9ocjqKVmcnvnTRQVVgYFhE6AS3Dzj5aZloCa/W3MqHaA/hB5WsK1jEB/64Fry0y1EBqocghUQ
	=
X-Gm-Gg: ASbGncvO9BLScWT+CDwHbJDVFnsl5G9kFUY90C0zgsx7zfwbcqORVBMOFQg7G9g5APk
	Sf6npFDyuBuOHP8dbPNqkP4VjfVb4cYYg5oCY0of62yRbqAyKnB+fWZGUdUjIvaUjLpRYT9UL8Y
	pjubrogDe2/51kA37S+fUiSImam7H8r6Fr/V5KdnCxUFpeFPnpLBRtEmebG6tQKE6bU0dgKtX4Y
	ORAQ6Sjes2oBTVYzfkI059/0GhgNEVmaeyEZ9VZRcwLSicsWMG0huFE4bkuCZ57CDGlqOaTa9Z7
	clccVZGuFmm02fB1ek62PcA=
X-Google-Smtp-Source: AGHT+IFSi3jwRmO5IQGbPx58tl4Ov/GrbmuXtfUXF3fiE8ZofCYz3kH/e+Cj9da41sXz/phV0N/9Zg==
X-Received: by 2002:a17:902:ecc8:b0:216:4972:f8e0 with SMTP id d9443c01a7336-2178aec1b2fmr48943715ad.44.1734010967857;
        Thu, 12 Dec 2024 05:42:47 -0800 (PST)
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com. [209.85.214.169])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2162265f6a0sm99554875ad.111.2024.12.12.05.42.46
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Dec 2024 05:42:46 -0800 (PST)
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-21669fd5c7cso5186015ad.3
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 05:42:46 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCViX5YNjoVLJCSG4VCc6w4q1TyBsDlkbK5wsjvhNCBHMNTY+70R6gc5Q+HjgUWKbyoChvU3UMeofzWw@vger.kernel.org
X-Received: by 2002:a17:90b:38cd:b0:2ee:b2e6:4275 with SMTP id
 98e67ed59e1d1-2f13930a5bemr5226158a91.26.1734010965932; Thu, 12 Dec 2024
 05:42:45 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Thu, 12 Dec 2024 14:42:34 +0100
X-Gmail-Original-Message-ID: <CANiDSCtZrWAbH14fqoSq9OKv8oV30Df6AnvWGCw3gdWHT3RBrw@mail.gmail.com>
X-Gm-Features: AZHOrDkkeUSv68uFDsthNPVdPT9M9vwSK5vDMlQCWhio0xwm_BfaQRgAl7Py914
Message-ID: <CANiDSCtZrWAbH14fqoSq9OKv8oV30Df6AnvWGCw3gdWHT3RBrw@mail.gmail.com>
Subject: Annotating USB device Location in DT
To: linux-usb@vger.kernel.org, devicetree@vger.kernel.org
Cc: Yunke Cao <yunkec@chromium.org>
Content-Type: text/plain; charset="UTF-8"

Hi all,

I'm working on a way to annotate the location of a USB device within a
system, specifically whether it's "user-facing" or "world-facing."

There's precedent for this type of annotation:

- ACPI: Uses the '_PLD' property for this purpose
(https://uefi.org/htmlspecs/ACPI_Spec_6_4_html/06_Device_Configuration/Device_Configuration.html#pld-physical-location-of-device).
We already leverage this for MIPI camera sensors
(https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/media/pci/intel/ipu-bridge.c#n265).

- Device Tree : Has a property for this within
video-interface-devices.yaml
(https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/media/video-interface-devices.yaml#n386).

I propose adding a similar property to usb-device.yaml
(https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/usb/usb-device.yaml).

The ultimate goal is to have this information consumed by the video
driver and exposed to userspace via the V4L2_CID_CAMERA_ORIENTATION
control (https://www.kernel.org/doc/html/latest/userspace-api/media/v4l/ext-ctrls-camera.html).

What do you think about this?

Thanks,

-- 
Ricardo Ribalda

