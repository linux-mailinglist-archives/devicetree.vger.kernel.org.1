Return-Path: <devicetree+bounces-75472-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 58DBD9075BB
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 16:52:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0E1631F24DDF
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 14:52:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13EFB14658B;
	Thu, 13 Jun 2024 14:52:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YU89UBT6"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFB7014601C;
	Thu, 13 Jun 2024 14:52:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718290332; cv=none; b=GuOeer44b1wwZ2UaxB6sH5LYwNiuDRtU6iHvBNzGGUk0saqjkrqo+uAHjsNJb9bARjgOM4kjA+9uvhSODwNTrMmA3iSKrFdCIpgVfi4ahVdiVYxzt8Nk81k8kVbMK4NRVNy96S23LdKoP6VHZ0uA4eZJ2+VHddF3BWEc8wwOt9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718290332; c=relaxed/simple;
	bh=hlMhbYCkIDxvubfKozCl+/3Wa65PuwgrnFUCB8EcLXg=;
	h=Date:Message-ID:From:To:Cc:Subject:In-Reply-To:References:
	 MIME-Version:Content-Type; b=DDXfaDuACMflRC7cPI1jczLnWRCWbWawDVWY1XNWeVTKEAF85zU+1eghGzEl1Vvkn7l4qvYoDwDtso3RAX9tsBQIdTXBg32QJOTj5Y2KOJo5al88egBTcqjo2otFcLyIqOkdziPVGi8ipVnJdlgVFGomdj+sUgyae3vbqd+d0Hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YU89UBT6; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7783DC32786;
	Thu, 13 Jun 2024 14:52:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718290331;
	bh=hlMhbYCkIDxvubfKozCl+/3Wa65PuwgrnFUCB8EcLXg=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=YU89UBT6yhaLHcSqsv4DLbdgl+8VGfeRhEqKxqbZ8Xhsd8zlaSaFfe47BVWw26iKC
	 4VpqUxA6pAa34Ip7mYhZxXoVtMjSLw45BrVdbKHqrV7RM8nLo/etIM8gZKplvs0vtH
	 ee0Czd+fu4lHgrZ1qpPKsgMs3E5mM1a87S1cQtnuhYenHAqpky5nTY4rUwKWyP2Woy
	 KdMu8or0oHGXXYgFv522YV3WP90zyaQU/PIww19BdO9k+PjDoaFkIKxwvcgR11cFbj
	 XYqVMTXL68icfNlqdG6rCUSPKLniWZY+GaAFgcGSPAhiRASk7To3AIdBT39/nScPx3
	 qI2KcfbWcI1PA==
Received: from sofa.misterjones.org ([185.219.108.64] helo=goblin-girl.misterjones.org)
	by disco-boy.misterjones.org with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.95)
	(envelope-from <maz@kernel.org>)
	id 1sHlo8-003b2s-Sv;
	Thu, 13 Jun 2024 15:52:08 +0100
Date: Thu, 13 Jun 2024 15:52:08 +0100
Message-ID: <86tthwki93.wl-maz@kernel.org>
From: Marc Zyngier <maz@kernel.org>
To: Sebastian Ene <sebastianene@google.com>
Cc: arnd@arndb.de,
	gregkh@linuxfoundation.org,
	will@kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Dragan Cvetic <dragan.cvetic@xilinx.com>,
	Guenter Roeck <linux@roeck-us.net>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	kernel-team@android.com
Subject: Re: [PATCH v2 0/2] misc: vcpu_stall_detector: Add a PPI interrupt
In-Reply-To: <20240613141335.1134341-1-sebastianene@google.com>
References: <20240613141335.1134341-1-sebastianene@google.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?UTF-8?B?R29qxY0=?=) APEL-LB/10.8 EasyPG/1.0.0 Emacs/29.2
 (aarch64-unknown-linux-gnu) MULE/6.0 (HANACHIRUSATO)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=US-ASCII
X-SA-Exim-Connect-IP: 185.219.108.64
X-SA-Exim-Rcpt-To: sebastianene@google.com, arnd@arndb.de, gregkh@linuxfoundation.org, will@kernel.org, robh+dt@kernel.org, dragan.cvetic@xilinx.com, linux@roeck-us.net, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, kernel-team@android.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org); SAEximRunCond expanded to false

On Thu, 13 Jun 2024 15:13:33 +0100,
Sebastian Ene <sebastianene@google.com> wrote:
> 
> Hello,
> 
> I respined the v2 version to address an issue previously found here:
> https://lore.kernel.org/all/202406132132.FBKSWFav-lkp@intel.com/

So is this v2 or v3? Having two v2s on the list is... confusing.

	M.

-- 
Without deviation from the norm, progress is not possible.

