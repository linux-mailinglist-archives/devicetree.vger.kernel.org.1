Return-Path: <devicetree+bounces-242153-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D197C874EE
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 23:26:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 4594235405B
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 22:26:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FC4427E077;
	Tue, 25 Nov 2025 22:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZSjbMeR2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 375AA241679;
	Tue, 25 Nov 2025 22:26:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764109593; cv=none; b=Vg6EXgVtbblqTRQ399UkjUqKoLELIO20/gB4eC2bx7EwkiKoeiwshiqfVaR5yZ42ZlnU1zDvO3XrNtgHyq8VZMQA3XEqsrsuSKzsC2YF1U5WBu+dgfFAGVIypw48Zp5RbPYT8dbfGUp10Us3sizxlIZ4gQ1emZ11IYGf0BISBmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764109593; c=relaxed/simple;
	bh=I1UXB6JthLwvWGpoEbA7H3OftO65su2/Qx6qU9nsIyE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=VWPZCmuq2+hdsoWRVYA6HIvf9l7YH/RCmwt1xYOqGOz+HIMYxBBK2mVNwfqIwDyvogjAsEKmJ6AAZ9ngzKpWNUQtYOQTbAX8i+3PNQlwlVX/YCTqkg3LfvReMtYNcoCbxKxTJN0tZdJpL0Lx8JdtwtCoOAdVUXZyTVrmRwiUsr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZSjbMeR2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 22604C4CEF1;
	Tue, 25 Nov 2025 22:26:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764109592;
	bh=I1UXB6JthLwvWGpoEbA7H3OftO65su2/Qx6qU9nsIyE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ZSjbMeR2t+HWEzQ+KzMdA5IPI032/CGJOCmnt3AUa9nliR+waToZ/+QSAL/EaIz87
	 S5+fvJRetpTp1J4Y69doJYw0tqTynE/6fWbC35dg99KhVp3fYf4l3Hy7nC51/0UcFQ
	 qThD0WOnNY5+aRYvbia8MfQaK41fbMAuN0zNIZnc2u8HjOBlc00kGmkuo/48dvu6mz
	 wlEuhLTqw0dm5svibMyQFKUc0EjSV2G7QJdig5V2cogIZu826sL3+6L/8DWdI+LBAb
	 7oF2MyJI+3dWR+nCPsnXT/O5m+SQYkHNJ6WMD/tLpZ5o8G/ZYV4Hcob5Fz3ozIy902
	 6fwSW/KsMUByQ==
From: Conor Dooley <conor@kernel.org>
To: linux-riscv@lists.infradead.org,
	Conor Dooley <conor@kernel.org>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	E Shattow <e@freeshell.de>
Cc: Conor Dooley <conor.dooley@microchip.com>,
	Emil Renner Berthing <kernel@esmil.dk>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Icenowy Zheng <uwu@icenowy.me>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v3 0/2] riscv: dts: starfive: Add OrangePi RV board
Date: Tue, 25 Nov 2025 22:24:37 +0000
Message-ID: <20251125-maternity-undercook-b63205b44225@spud>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251123225059.49665-1-e@freeshell.de>
References: <20251123225059.49665-1-e@freeshell.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Developer-Signature: v=1; a=openpgp-sha256; l=912; i=conor.dooley@microchip.com; h=from:subject:message-id; bh=Oly6Yplrra9GN4anHWynjV7GRot3Cv7JXe68gZ1jswI=; b=owGbwMvMwCVWscWwfUFT0iXG02pJDJlqOks6fPeYBxudm77ir4fNcnmXi8e9/+3Z6y44O+nph +/qUzev7ChlYRDjYpAVU2RJvN3XIrX+j8sO5563MHNYmUCGMHBxCsBEHgcwMtzZmv19jinrSpcl Yq5TV7geyZA4aJXnw9Zkys+cIbpGSZjhr0Cqr3g746Vnl8LNq5x8jRpDiu8pxs+plGm+8pebY0I LFwA=
X-Developer-Key: i=conor.dooley@microchip.com; a=openpgp; fpr=F9ECA03CF54F12CD01F1655722E2C55B37CF380C
Content-Transfer-Encoding: 8bit

From: Conor Dooley <conor.dooley@microchip.com>

On Sun, 23 Nov 2025 14:50:43 -0800, E Shattow wrote:
> Icenowy is busy and so with their permission I have applied v2 review
> feedback. Additionally I revise the commit messages. This should now be in
> good shape for -next
> 
> - E
> 
> Changes since v2:
> - enable active high mmc1 card detect gpio
> - drop delete-node from mmc0 reset pins following commit fa939a287224
>   ("dts: starfive: jh7110-common: split out mmc0 reset pins from common
>   into boards")
> - sort phy0 properties rx before tx
> - revise commit description of SoC peripherals as list
> - revise commit description of compatible binding
> 
> [...]

Applied to riscv-dt-for-next, thanks! I know I mentioned waiting for
Emil, but this stuff is actually fairly simple so I just went ahead
with grabbing it.

[1/2] dt-bindings: riscv: starfive: add xunlong,orangepi-rv
      https://git.kernel.org/conor/c/d94ebab404b0
[2/2] riscv: dts: starfive: add Orange Pi RV
      https://git.kernel.org/conor/c/5b70764e1019

Thanks,
Conor.

