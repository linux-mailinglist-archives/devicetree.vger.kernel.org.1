Return-Path: <devicetree+bounces-224657-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B89CBC6B17
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 23:32:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4FFD519E215A
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 21:33:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6079A2C11F4;
	Wed,  8 Oct 2025 21:32:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=pinefeat.co.uk header.i=@pinefeat.co.uk header.b="qIy6MKyz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FBEC34BA5C
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 21:32:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759959159; cv=none; b=G1lgX0lwsoa2bS1g3QF+prrVR14OC7eWgTUBkzU7FHZWFmGNGx4L2bb/UVdBRWN7JM9JYgLCsKwiM1OxdlU5W32rIpis9xiSDp9LcghO2IcxsiBMooMFXV33fNlqaUIPYh/7cPFXAMFebFN9kIEhRz57VeGU4KbfcigW7htVeBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759959159; c=relaxed/simple;
	bh=e70Bs/O5EAKRWcYxVR2GwoG02d0actk1OQmwEew1rKw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=i0tzBbq4nmSzCbR/vEp/UwQvSliZDWbzsTjppJ9trKgc1sLEwhOymX56Ajb/IcnhXIMMh3sNTxjuajFL+bBfxT7unEYOvFQRHQhMg/0mH8Wk8qm/J70gf14EPl4JGfZt9RFeTkScotNEZMHwceQ0CwE1wo7Bf4qKovcl42nl2lg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pinefeat.co.uk; spf=pass smtp.mailfrom=pinefeat.co.uk; dkim=pass (2048-bit key) header.d=pinefeat.co.uk header.i=@pinefeat.co.uk header.b=qIy6MKyz; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pinefeat.co.uk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pinefeat.co.uk
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-4060b4b1200so344150f8f.3
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 14:32:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pinefeat.co.uk; s=google; t=1759959154; x=1760563954; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Iib8S/atLqN/Z8rYxef/QQXPaAWrsYEKhr0SHcC79yE=;
        b=qIy6MKyz0EoO17TBcV9sZV6hPnbhQ4N1RCTtb7loFX72MQeoSJspWQe3obPVzjLXpS
         5Jo+8+agFK++Q59Dvt+vEHJm6u0sc4q/osxm6qLoaO3z19fRBYkW06SJStEw9CmCgOOz
         W2IOf+CJMr+6Ljk7AHtOEKLGl7lGe3xC/fOqqskFmABpox3/dC8cF1yYueXg22pcIraA
         NIriJA7jXCyfCAQpk9gBFgzwtaLr6ddt758Q0nOx3JoT6eTl00sqkP3OlIk72L/iO9+k
         BCrKaAby6hTGeakxMlvGQ6IZ3SB9W77l/boJr9k8rErm94tpwHvH/Uqt7zf4A5RVMdkB
         2ZyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759959154; x=1760563954;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Iib8S/atLqN/Z8rYxef/QQXPaAWrsYEKhr0SHcC79yE=;
        b=C8o4nKcFF4xmCTX+d0/uvdyKg1x9vdO/fpMTa7w1cYKv2rq7qORPJuFW0v9+cc2rEM
         9gCpRqJbDYA8aj55US9mRRPAuxhDxOBB0hCGXO8xAxPK4eWJboYeTarzWjPjoclyyhHS
         2xNB63NitCalZdNuHFKyBKniRoml6/+GTfKhD81GKE+Zt8RaRZ35DmlFrlxtcrFDemx0
         x2B8xh0ap0WGVJhZ/rb9XZ/tq5a7HTDmhQR5hbgcV6VRu74NsVTZHT2kEGMOcCHC1Ip2
         i3sKoZFGnL3oPq+n45leTi9K9Xyyesr1nZgT+R4CpNiO+MMWxLytcjbO7zVVxAkrcaVl
         kE2A==
X-Forwarded-Encrypted: i=1; AJvYcCVjANX6neCV53An/CNUvsm4HG69LARCS772aaq5I6uEeerStcAx7s22gC9Vh825iiM8WhFMS3tcf3Vj@vger.kernel.org
X-Gm-Message-State: AOJu0YzFu79JV3Dw+k5i1ZTa9EHpvLfUvK5xZ59/FIQLXtqsXjdRxpPE
	q0kUuHiDbLfXOfcmWivwsQass0UbjagCkDVCiY4XozP+h2qC3VDvrHXknsuA2WTyzViTUaiKjPn
	P+TMTnYQ+HA==
X-Gm-Gg: ASbGncupZCFp/VWaTz58yBGbJvBca6EqkUeIOfqIbHCb246u+afjBIwsiQze+QUuEia
	aStJN9GN7NCrmx4VPtvxX5qvs2jvHQ7hQG7JgxE+N7jpznHr+WdmAbIBxGi4cLHr8Ps+Eu4CoOg
	+EK4WXvfB3h94IWXg9Ml4iKe94kN1pCjfiEqHk8DkVySXofmlsKJ0FbT81hWxVi22NzlYFVfu0R
	WxpnoI6vc97kCiw5jqJqeVaAj8pzP4KU7err0xU/A6i3cI8ESgq3WAVBBYUbudTBVMwHi6EtXgl
	8cEz6hhzhQykZOfMEiY5Dx6v1oStESZKSeGozIHVGr78amjGgNi2+bepPRwNgAUJZBWLG/WN5qK
	xxTFa0YhP5+6u9L9ZnIf5Fra8v3D/JxyQxSur/uX8vlYjQ01tXB+rOVZnfsJC0RKl
X-Google-Smtp-Source: AGHT+IEHIfW75N5y0R98OUlepL6okEPOBq4l5OxuL7bDpbGtJWWxEFFZctsR4HRbkhMXOYHJWxXZrg==
X-Received: by 2002:a05:6000:2305:b0:3e9:b7a5:5dc9 with SMTP id ffacd0b85a97d-4266e7d6bb2mr3037022f8f.23.1759959154071;
        Wed, 08 Oct 2025 14:32:34 -0700 (PDT)
Received: from asmirnov-G751JM.Home ([2a02:c7c:b28c:1f00:b672:801:34e2:2e5f])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4255d8f0170sm32585881f8f.49.2025.10.08.14.32.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 14:32:33 -0700 (PDT)
From: Aliaksandr Smirnou <asmirnou@pinefeat.co.uk>
To: conor@kernel.org
Cc: asmirnou@pinefeat.co.uk,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	hverkuil@xs4all.nl,
	jacopo.mondi@ideasonboard.com,
	krzk+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	mchehab@kernel.org,
	robh@kernel.org
Subject: Re: [PATCH v6 1/2] dt-bindings: Pinefeat cef168 lens control board
Date: Wed,  8 Oct 2025 22:32:33 +0100
Message-Id: <20251008213233.8541-1-asmirnou@pinefeat.co.uk>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251008-pushiness-underwent-a1f0450a933f@spud>
References: <20251008-pushiness-underwent-a1f0450a933f@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

On Tue, 7 Oct 2025 21:47:29 +0100, Conor Dooley wrote:

> On Wed, Oct 08, 2025 at 06:50:36PM +0100, Aliaksandr Smirnou wrote:
> > On Tue, 7 Oct 2025 21:47:29 +0100, Conor Dooley wrote:
> > 
> > > I acked v5, any reason for not applying it?
> > > https://lore.kernel.org/all/20251007-geologic-epidemic-2f667f232cf6@spud/#t
> > 
> > Yes, the dt-bindings patch can be applied.
> > The v6 series does not change anything in the dt-bindings patch - only
> > another patch in the series was updated, so v6 was sent.
> > 
> > Apologies - I wasn't aware that an acked patch could be omitted from
> > the new revision.
> 
> No no, it's not that it should have been omitted - it's that you should
> have applied my ack on v5 when submitting your v6. I guess timing worked
> against you because I sent it like 20 mins before you sent v6.
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

Thanks for clarifying. I'll make sure to include your Acked-by tag in the
next version.

