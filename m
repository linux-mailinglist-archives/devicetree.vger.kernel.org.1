Return-Path: <devicetree+bounces-250482-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EDA0CE98CE
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 12:37:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1D7AF30142DF
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 11:37:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60A532E6CDB;
	Tue, 30 Dec 2025 11:37:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ase3+yPC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F0DF28504F
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 11:37:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767094624; cv=none; b=FP5iKFvSKmKOxRA5GIkHI5AvvY+hn04c+fRoX6dag8apAAHNCar6+NrzdftKOyZ2BDxBMIZ+lRY4qMWvT8ZtXamtEOToOsaKGyzYsgDY2XnloaLKGBxdxXaS6D4SXPA1gaYeiqaYU/zVT8KMuK0ZkkPuLKKzuf0Q1oGYnpGGy8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767094624; c=relaxed/simple;
	bh=8n8WP6t0YcDAYZ7kg3FzA+7B5fDmDzd8BrdVQJVpcRs=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=kZ04g0wut2oNGJPNCGGi+9C8VlOMtytkjofHLLjr9Grw0YbEER35lSUZCJMTcTu4GDtbKcdK3lObTC6WFNvD0mh8sghRyyd2ZvdK3uiXslEyQtFnAbvzJ4QyQxRgRxQddD+kjKuPXXK2o3Me8/2GmazjhYNuEIgqbFSVRC4x2Co=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Ase3+yPC; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-37b97e59520so84900861fa.2
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 03:37:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767094621; x=1767699421; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4CmAFwrYbDuyMoa/BPWjtX3r2mUHX5vgd3DvqkBcFzk=;
        b=Ase3+yPCgI2K/7zwY6HeHLVpt0MTzbeVu+fQe7YltTVnJsipj/+VnLDpzD9gUutvUE
         If0ARIlIQGQPtaxrMb5538uWv0vFWABUlrI/mtJLxGZy4DvW8RWGyi7onFwFQr+cpvGX
         5NQDZscrk7FIL3gtbRloK+ymD9Xiqdt//Of/zWl2Si6mcZmb+PTaEeXsdJOVlRzAHcCr
         bIsjN8Q/NPw6xueIx78sUHN516LUBT5PqD1MJYcFCpBI5pWJHsdffSO64jdjQ36dEQ8/
         DQ8am0zxmUmpmW2MztQ3a4z8f/wd84yf6AG53B3pXgQG65hnO6W0ih3eFgeIk31sSLE0
         AH4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767094621; x=1767699421;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=4CmAFwrYbDuyMoa/BPWjtX3r2mUHX5vgd3DvqkBcFzk=;
        b=vHwBngs558LvVQUcfmuSOvx0VBjBEKwlYKjNr3g3MSqyBAPUKex7IvRMsZ9wCEsSmW
         HFdVrhuLn17n/W2qy+K3cKkQzvKsJzAtNtTJzMw8QLRKIMI98LIFHXiMt+8v1SyQ0ed3
         TtEFaPLotNZPK9ijFK7j3DRJlNfwXifkuYryvL7kg9U0Z/R3NdM/ElUvcxt7hNaSX0hJ
         yJ0MrlJsz34NGcTEthUn/91mzZWCwm7Me/MDFxPozcFCQFUnL/l666Bw0Nv3BukoCeqU
         TtjBcvKYKUeL1f5vkG0leAO7UP/K+9UFs9VUxZ2TTREu1KJdJcgk+1Bghe6TYag8QWzr
         Zl1A==
X-Forwarded-Encrypted: i=1; AJvYcCXT7uirskee11SAHP516uMrmcr8POvgq4T1GswoP2SOgbSE5/VbyJEt5trIXo1d0+1diyG8JMfZYxbf@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2QAAg+VYxDxxqTX7QWbTDrhz4flPM4nQfsmd+JQIe0Ok0ifDK
	q+oIOi4jdH2xDMtIrV+FRSnV40ocwRfbhn+PNQGCKpKr1xbXf5iI6Cg5
X-Gm-Gg: AY/fxX4SlhfUvozWSEA9keL/kqiB5TWuOYWSpdtyZ9owoiZomPJZSiS4dyBgDDumpQX
	B2io7QCpVdDZp7EXsMg3GLlFw5jnJG1QQr5VS7CMzSS1MGsdziCGtZA1YmoFjUcd6pjo1ouaYki
	yl9xZyy8SGgiKKK5rRHn7RHOAMXXgr1tml570RwjSD1nfXJdZREQzyqj3s2sa9Rp8FGpWAmJjKe
	TsmaiFD8sTfZhxe9w84ZxAW8P9YOQdfdHPFZTwYi6e/J68nFZaQDsCiK31HcZ1MvjHYEDXCJr10
	0DLoudcEm6n/zu0No1gzMP7Nay90kw1LHOLXtadQCeeljmdqUfNu6BR5raPfOWrzolW1dJIa8C1
	1VunWK0EMj+slLxbohKHMpkFcxWXCmYJVtyAxpBuOtAcn7o+cxo14N27PaDFIOeJXWp+BOZR+IB
	/saLMD7nXs
X-Google-Smtp-Source: AGHT+IGF3gFGUozf4G9zt9Om+vstcNbw0h6yAp0aZ++ChCDii30yTV/4I9FiaTW4YuEjPjrGwT/sFw==
X-Received: by 2002:a05:651c:f02:b0:37f:8bb4:88 with SMTP id 38308e7fff4ca-381216bd8cfmr102647771fa.41.1767094620457;
        Tue, 30 Dec 2025 03:37:00 -0800 (PST)
Received: from localhost ([194.190.17.114])
        by smtp.gmail.com with UTF8SMTPSA id 38308e7fff4ca-381224de728sm89285781fa.5.2025.12.30.03.36.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Dec 2025 03:37:00 -0800 (PST)
From: Askar Safin <safinaskar@gmail.com>
To: nfraprado@collabora.com
Cc: Tim.Bird@sony.com,
	bhelgaas@google.com,
	dan.carpenter@linaro.org,
	davidgow@google.com,
	devicetree@vger.kernel.org,
	dianders@chromium.org,
	gregkh@linuxfoundation.org,
	groeck@chromium.org,
	kernel@collabora.com,
	kernelci@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-usb@vger.kernel.org,
	robh+dt@kernel.org,
	saravanak@google.com,
	shuah@kernel.org
Subject: Re: [PATCH v4 3/3] kselftest: devices: Add sample board file for XPS 13 9300
Date: Tue, 30 Dec 2025 14:36:16 +0300
Message-ID: <20251230113655.1817727-1-safinaskar@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <78b4f1f60563fc854f5f4a54b42e0bac60715070.camel@collabora.com>
References: <78b4f1f60563fc854f5f4a54b42e0bac60715070.camel@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

"Nícolas F. R. A. Prado" <nfraprado@collabora.com>:
> While I understand it might be inconvenient that this is the only file

As well as I understand, it is intended that more files will be added
to tools/testing/selftests/devices/boards with various vendor names and
product names.

So I did some further research. I grepped Linux source and found some
vendor names and product names with undesirable chars.

Let's go.

/rbt/linux/arch/x86/kernel/apm_32.c:2097:                       DMI_MATCH(DMI_PRODUCT_NAME, "PC-PJ/AX"),
/rbt/linux/arch/x86/kernel/reboot.c:396:                        DMI_MATCH(DMI_PRODUCT_NAME, "PowerEdge 300/"),
/rbt/linux/drivers/platform/x86/samsung-laptop.c:1633:          DMI_MATCH(DMI_PRODUCT_NAME, "R40/R41"),

Here we see / chars, which are simply forbidden in Linux filesystems.

I also found a lot of others undesirable chars, such as "(" ")" "'" "&" "#" "*",
which surely will break a lot of tools. In particular, "'" is used in bash
to quote something verbatim.

Here is extended result of my research:
https://zerobin.net/?d1f2655a979acd3f#oBhwIedQvBL/iB9Src65aRYuyjaye2GQBNL3+6yfvGg=

Unfortunately, I'm not sure which of these names refer to whole "board",
and which of them refer to merely some particular device, such as USB device.

BUT for 3 instances of / chars given in the top of this email I'm totally
sure that they refer to whole "boards", so we have at least 3 totally
legitime cases, where we have / in product name, which simply cannot appear
in UNIX filesystem at all.

So, conclusion: if it is indeed intended that further examples of boards
will be added to tools/testing/selftests/devices/boards, then they
will contain all sorts of undesirable chars and notably "/", which cannot
appear in filename at all.

For all these reasons I ask you to change name convention for this directory.
For example, use some kind of sanitized vendor/product names.

> there are
> tons of dt-binding filenames containing commas in the tree.

Okay, I agree with this point. There already are a lot of files with commas.
But I still don't like spaces and all sorts of characters, which are present
in DMI vendor names and product names ( "(" ")" "'" "&" "#" "*" "/" ).

-- 
Askar Safin

