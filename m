Return-Path: <devicetree+bounces-75455-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FD0B9074D6
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 16:13:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D93DF1F21274
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 14:13:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCC711459F7;
	Thu, 13 Jun 2024 14:13:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="wzQ073VG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f202.google.com (mail-yw1-f202.google.com [209.85.128.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66BDE1459E0
	for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 14:13:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718288022; cv=none; b=oRhdb/rzQ6zygHelS0mU06mp7ZOHiNsoUtmc5pEgRk+rDIHfo8iU5zYbnt0T7UdA2NpQmw8qnlkA8tLCCsX7jB+mo5uNSB10HaEHVomFSTpfLV4D4cyiY9JrZ2OX6kBVrivdDAeSNQFivUinAG5sz7d7if5Jpk4Ts50GcAX1PwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718288022; c=relaxed/simple;
	bh=JvvA1Mb4xpPipo/GUaqPlHRKSMtpx0CMXy2lrxcdHoU=;
	h=Date:Mime-Version:Message-ID:Subject:From:To:Cc:Content-Type; b=kml6EtGbl44+C+neCk/QJ9E+RpE65y8BROl3xaNvJfG2JKqR3eTzTPwGa2bs335EJPuO7sHU7hgRWCPMn5kZ6NTf0Xb/Lrc3FpITfN1amawwZPwu7w/aIG0BVwcKJ30G1ImeWvxSf/7GoL7LAHPD4Z9h27PWSnBHhBOZGwBIe7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--sebastianene.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=wzQ073VG; arc=none smtp.client-ip=209.85.128.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--sebastianene.bounces.google.com
Received: by mail-yw1-f202.google.com with SMTP id 00721157ae682-627f20cff42so17840837b3.0
        for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 07:13:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1718288020; x=1718892820; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=WBr89me4XcHZr4o6WgJAT/45F34TEJBrDeja5kex7lo=;
        b=wzQ073VG7V8YiwoUnws+mzKLQhEb2Lvq/BfPVcTbsGld0ZBfcGAWzk9XHt88gIBtZD
         5A9iCzH56jb6laJVQZkHHKBUk0zOzWRDaGfrzjPZfb/vnz7IxCZx2WaTRFzzR6FcPNH2
         YlwSsS69/KB3cEjNma8p6oGaz/qEyrmXsMQvfS69jaM2goL2qu8laiO4z6r+kvnZLkN8
         a7D3xWSnhe5N7XrEc7B3KFm/iPWp84htqwson/8j+Yrrz/NMTAUnUlTxlT7UtLtrKDR7
         b0zwHa/k0gK+j3J+KO5QkpTJ7wdy2jYMcGKMGIEXpTo2qJoIaOTvpSU8njur/JXKHjvz
         nMWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718288020; x=1718892820;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WBr89me4XcHZr4o6WgJAT/45F34TEJBrDeja5kex7lo=;
        b=RSW5BYgZqnAmfFn/OMz9n0FQGBJIZFDap8v6sjRWgaN2hKD9eJKsnyx4MYiTOEHB8V
         v6f2ONBYcILEherK8SNVwjUP3y7VOs/jx1cSM21PolBe2w61jnmTvLhdmqGhRIqxrEiX
         0zG4iGezV5naOdsh4LmzspKSgo8+VeKbTbsaoAKBsfODzOEMEc+Q13ZPwVzHZ/wAcFhI
         ohDLHCUnqeT1QTYspu4www09mc7Gg9Fq8SNAOK2W4dEZLniXH3bw/AYNGQJYFKlrDisc
         kMZIoiJCA6fBhCOJINBQn60hcWeWkoPqPQ67FuFYQIdhuYQKZJno3X6+a7dd3qldsmVa
         NdXw==
X-Forwarded-Encrypted: i=1; AJvYcCXc1GgvyeKvveISog/skl3O7UNvOnSYd7XNvkQX8hrg+abux8ro55hqdM5mznPM6CiNwDDPvTtRDQqmi+PpghApfIKofcTsx2kZog==
X-Gm-Message-State: AOJu0YzeE2p19CVs9W65q8av9FF8SJZhpABnP579MAdBgYofOIS3xXLy
	IOLKOyT5nJWUMcAdAu+qXcOqD+2Uyoj1eR4KQF9sij3W2VgUnn3TlVdIXhx7MZ1ihrAmY7KJKc1
	pDfSli4BwAOrYEEyLdRiyVcbQjQ==
X-Google-Smtp-Source: AGHT+IEkC9/Y4iK9fxrgnym1aS48DHLsXlQbFUVLV6b0cV3XIfrOmU5z8nnkTtCP5gaXSFFSwCZZosDvxu3eAIH1WL8=
X-Received: from sebkvm.c.googlers.com ([fda3:e722:ac3:cc00:28:9cb1:c0a8:cd5])
 (user=sebastianene job=sendgmr) by 2002:a05:690c:a8d:b0:62d:fbf:920a with
 SMTP id 00721157ae682-62fbc2de630mr12401907b3.10.1718288020361; Thu, 13 Jun
 2024 07:13:40 -0700 (PDT)
Date: Thu, 13 Jun 2024 14:13:33 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
X-Mailer: git-send-email 2.45.2.505.gda0bf45e8d-goog
Message-ID: <20240613141335.1134341-1-sebastianene@google.com>
Subject: [PATCH v2 0/2] misc: vcpu_stall_detector: Add a PPI interrupt
From: Sebastian Ene <sebastianene@google.com>
To: arnd@arndb.de, gregkh@linuxfoundation.org, will@kernel.org, maz@kernel.org, 
	Rob Herring <robh+dt@kernel.org>, Dragan Cvetic <dragan.cvetic@xilinx.com>, 
	Guenter Roeck <linux@roeck-us.net>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	kernel-team@android.com, Sebastian Ene <sebastianene@google.com>
Content-Type: text/plain; charset="UTF-8"

Hello,

I respined the v2 version to address an issue previously found here:
https://lore.kernel.org/all/202406132132.FBKSWFav-lkp@intel.com/
 
This is a small update of the previously introduced vcpu stall detector
which adds an interrupt to the virtual device to notify the guest VM in
case it stalls. This lets the guest VM to handle the reboot and to
panic in case it expires. 

Changelog from v1:

* 1/2 : collected the Ack from Conor Dooley, thank you Conor !

* 2/2 : applied the feedback received from Conor and used
	platform_get_irq_optional. Removed the error messages during
	probe
   

Thanks, 

Sebastian Ene (2):
  dt-bindings: vcpu_stall_detector: Add a PPI interrupt to the virtual
    device
  misc: Register a PPI for the vcpu stall detection virtual device

 .../misc/qemu,vcpu-stall-detector.yaml        |  6 ++++
 drivers/misc/vcpu_stall_detector.c            | 31 +++++++++++++++++--
 2 files changed, 35 insertions(+), 2 deletions(-)

-- 
2.45.2.505.gda0bf45e8d-goog


