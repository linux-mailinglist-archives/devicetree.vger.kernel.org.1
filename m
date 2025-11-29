Return-Path: <devicetree+bounces-243080-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 02F8CC938C3
	for <lists+devicetree@lfdr.de>; Sat, 29 Nov 2025 07:52:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AD3F23A821E
	for <lists+devicetree@lfdr.de>; Sat, 29 Nov 2025 06:52:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEF542222CA;
	Sat, 29 Nov 2025 06:52:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hHVPeijD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F643182B7
	for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 06:52:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764399139; cv=none; b=cMpb2wp9O04SFXG/fcU7YYDGV3WPWRQcnDTob/peu3MLAHctLfeXIQeX/dN+YhYGgwkz8WQwnQEPuZzft5ecs9zkvF2kqWi6ldYlTBG2PBjH4WCS5Njrl49bhZ1ie6Zs4STDg91wqf1qrnll/FX5SsiP4btFW5S3artkoMlNKe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764399139; c=relaxed/simple;
	bh=StAmDM+RBMgLY4g0B3fBIPUslp6t7Z6DBRumRbY0nRk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hYgBVhhDCXfNS1Gwb6P2YtmaZ+Antq8iHiUd2z41SnyWV1y5v7z1z7PZ2bqW1NInNttHfgba9I5TfWQm6oa/TSM1KIJvXq1roBQd84uV7vRmxgwiDMjObmhaNDGHBdAVex5IP1CdPLDSlXmGc55wHsjjDOUpRnXWptwxsVW3vS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hHVPeijD; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-640a503fbe8so4773972a12.1
        for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 22:52:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764399136; x=1765003936; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=mY57t/v7l7+q+SXGdGf8+i198PFB2EV4ssC0luXesUA=;
        b=hHVPeijDIQJ95+sLgOT0HF40eiF38es/N05ppSanKxPlBfnfFZIbNMNxYP27z7qSd6
         jAC+hJn1gUNsdu9iwqi2bdurHtAnVhRuL7DmhCDlrcV6ldP7QOiZwRaQ+5ERxytm4zGN
         ZM1uRKoUkCy8FN4sWO1rSACl1D6zR1CV+ebu8PFrBGCIxkmKict6qLKWtd8Kyw7SQ3zO
         u0ozwvGPhhLTj+PHZt+ikTUqZrn7hI+KUeMeQzZ8PEdu0K6cwcNkYf+lpI3yHbUgJNFi
         UboD4bG77S/j6CCfsQe89Gs8UQarbwc67dkyxHOIxBOwszLxVo9b4Mshu+9G/lIuioii
         xsIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764399136; x=1765003936;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mY57t/v7l7+q+SXGdGf8+i198PFB2EV4ssC0luXesUA=;
        b=gO6idREc+hlrdwab28Kd8hoDAEn+3gUCXD4cGv7ItInAT7j3IX463IwiTaAaOedCmu
         chiNI4w9+JJTMUB6Kb4vdaa/WbLxnBecqoJOvqr2ANGQRRnUoT1oJBFR/BlmEVEErsOF
         yLr0g98x3gMT9Z6kQB7F7J+uvBpe+SZgZ4KIfXffPkpivo+XfBkXyI91aoH4M2lSA4LE
         ImYZ2zXfceTESbg4JTY0G2O6wRIvsaEMBbvESyG0+3lcPpL9oyGRAdFxXxumthawMr6w
         z7M9wd8iV/1wBanCKcePeN2nV/ZOj+WZlDmuGj8SvjI2JZVP/O8zCZO3SDecBygEBOzr
         lnjA==
X-Forwarded-Encrypted: i=1; AJvYcCV3iLU9KO9mcp2v6LRxrcsUFpbIwpQKq24CjrkokZ3jwN4k2Csslc0EAXj14LAiRozrkqphW86JgLZR@vger.kernel.org
X-Gm-Message-State: AOJu0YwVtpLKWCvWpJZiJLICUgxwDCalfWUCDUreSjLYvHf6Qf2MJ235
	OGWijO12J6SQFqeKuCglYDIqPYyCowaHl49aYpp0K6kLCK9VaqxVk6+4//1j0vDnaiVCHpmBEZu
	+Gg0EJ4ORHwqp2hIjyvZ5dxMeOi0APeE=
X-Gm-Gg: ASbGncsUCU+yWTjPfe0cirAftNEKCJX+kDGXDgH9n5Up4hKCDeDqKNvPDORbRfELLtG
	IJmdyLAfTGCimwf9LK/4bBdveBXip8YUObgyRxDAMgPqk9vhWbZiiMBcnG2ow8Vam5sBMqzEpV5
	2ttV9RAzguuUuQuLaQYVv4wqXVhcnq9eiTfUXIfd0CR5oPXL3eqe0ax1dxf/VVCC+atANAUvV6D
	nvU2o90xYfruSs+5nGB7hJsBctfenZoXCB8c9wVfY2lahqPpyonnX/pVLr5HRIZASNAKg==
X-Google-Smtp-Source: AGHT+IEWbCpvWmUs2vHbk6WH4VEpZA3VDYQCv5LZHzbValWzg3sRI2GhxxXJjnqqkRLwKiso/m6RqBqq2D87EH2dXfM=
X-Received: by 2002:a05:6402:26c1:b0:647:5c87:8668 with SMTP id
 4fb4d7f45d1cf-6475c8786c8mr5315010a12.14.1764399135812; Fri, 28 Nov 2025
 22:52:15 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251027005220.22298-1-naoki@radxa.com>
In-Reply-To: <20251027005220.22298-1-naoki@radxa.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Sat, 29 Nov 2025 12:21:58 +0530
X-Gm-Features: AWmQ_bmJZvas800HhmEpnUFfX62SZoRx2KXDDiwowp2UV_htK6hrUPjWWrOs7bw
Message-ID: <CANAwSgS-OxBoRy4jwb+XkuxYwws3P97eAFaOJAPBvK5gtgHuLg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix audio-supply for ROCK Pi 4
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	knaerzche@gmail.com, devicetree@vger.kernel.org, 
	linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

Hi FUKAUMI,

On Mon, 27 Oct 2025 at 06:24, FUKAUMI Naoki <naoki@radxa.com> wrote:
>
> This reverts commit 8240e87f16d17 ("arm64: dts: rockchip: fix
> audio-supply for Rock Pi 4").
>
> Fix the APIO5_VDD power supply to vcc_3v0 as per the schematics[1][2]
> [3][4][5].
>
> This fixes the SPI-NOR flash probe failure when the blue LED is on[6],
> and the garbled serial console output on Linux.
>
> The ES8316 headphone and microphone are confirmed to work correctly
> after this fix.
>
> [1] https://dl.radxa.com/rockpi4/docs/hw/rockpi4/4a/ROCK_4A_V1.52_SCH.pdf p.14
> [2] https://dl.radxa.com/rockpi4/docs/hw/rockpi4/4ap/radxa_rock_4ap_v1730_schematic.pdf p.14
> [3] https://dl.radxa.com/rockpi4/docs/hw/rockpi4/4b/ROCK_4B_v1.52_SCH.pdf p.14
> [4] https://dl.radxa.com/rockpi4/docs/hw/rockpi4/4bp/radxa_rock_4bp_v1730_schematic.pdf p.14
> [5] https://dl.radxa.com/rockpi4/docs/hw/rockpi4/ROCK-4-SE-V1.53-SCH.pdf p.14
>
> [6]
> => led blue:status off
> => sf probe
> SF: Detected w25q128 with page size 256 Bytes, erase size 4 KiB, total 16 MiB
> => led blue:status on
> => sf probe
> jedec_spi_nor flash@0: unrecognized JEDEC id bytes: ff, ff, ff
> Failed to initialize SPI flash at 1:0 (error -2)
>
> Fixes: 7ebfd4f6b52a6 ("arm64: dts: rockchip: add LED for ROCK Pi 4A/B/C/A+/B+")
> Fixes: 8240e87f16d17 ("arm64: dts: rockchip: fix audio-supply for Rock Pi 4")
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>

Tested-by: Anand Moon <linux.amoon@gmail.com>

With this patch applied,  I can get my console working.

Thanks
-Anand

