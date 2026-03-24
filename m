Return-Path: <devicetree+bounces-279605-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id INjPLf8ywmmUaAQAu9opvQ
	(envelope-from <devicetree+bounces-279605-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 07:45:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EA1B303619
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 07:45:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2B023304CF58
	for <lists+devicetree@lfdr.de>; Tue, 24 Mar 2026 06:39:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A0583C2799;
	Tue, 24 Mar 2026 06:39:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MIYAFh2g"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E948C396D28;
	Tue, 24 Mar 2026 06:39:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774334353; cv=none; b=A4rIfHaYhDM7W4nopZSdIVV6MYVwzVhsOOjwR1sYozi1C7dFc2+0xYjN1AHJ3SjUSIWOadfb+B4O1PBzVD3MkEZstJhm2k545KzuzBTtYP7oDxUwU1XkLuMtDVF/BmP6+s7PjsivD0bckP8sMHl3kMmfs64vFGSvhbjoCj0C/qY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774334353; c=relaxed/simple;
	bh=iGOx98UP1vpKG7YZd8YE9BQwS0A7jTMzxUvXgeGAHSI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=YBd4Zm76tYbUEqsgaWDeXlKRpDBCuhEs51Jhp43vjj7yOaGhbmtwqAFIziTEmADcJuyjGueelZabMPT244X3T0Hb6Iwdf4DrH+mzF5zyNu+zZk3yIXUtqJ44I9tLsc2HwFPBgCQRw39w8AVVLtXtfslZMcgXXiLFU9VoIzbp3dI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MIYAFh2g; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EE645C19424;
	Tue, 24 Mar 2026 06:39:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774334352;
	bh=iGOx98UP1vpKG7YZd8YE9BQwS0A7jTMzxUvXgeGAHSI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=MIYAFh2g2nIzaNuvfWL9VyTrtDpxmGBSHkZhSvtgc+x75Fglabmstk1493Y4Z663v
	 LQtXlwI4E7l98/786lVYUJJzg7G5dO0Zq2oFBEVBTfQ9JNM83h0gWzw1JRbXp3ML6V
	 iazVL0QdPBYBlwL2M9Hr4VwFpnyZvJvb7hMN38yDruQvIK63NuTSwUIpj+v8owHEtk
	 Lb22TfPqBTuAm0NfBgP6xARy/CUduJRtlJm94WbwUXw6P31GKjuGU6Vib+vY5OdGjQ
	 oluiuJOpxlgcitfDyO1rjuzS8lIrO3xKC4FzMIMvj6W4fM57Sgs4Hz6ENFRxnkof3n
	 YDu7B7fqbcsBg==
From: Yixun Lan <dlan@kernel.org>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Yixun Lan <dlan@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Paul Walmsley <pjw@kernel.org>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	spacemit@lists.linux.dev
Subject: Re: [PATCH 1/1] riscv: dts: spacemit: reorder phy nodes for K1
Date: Tue, 24 Mar 2026 06:39:02 +0000
Message-ID: <177433411962.241042.5017156711988723087.b4-ty@kernel.org>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260318100000.3934516-1-amadeus@jmu.edu.cn>
References: <20260318100000.3934516-1-amadeus@jmu.edu.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-279605-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3EA1B303619
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Wed, 18 Mar 2026 18:00:00 +0800, Chukun Pan wrote:
> Reorder the PHY nodes of USB and PCIe to the correct positions based on
> the register address. This improves the readability and maintainability
> of the DT. No functional change is introduced by this reordering.
> 
> 

Applied, thanks!

[1/1] riscv: dts: spacemit: reorder phy nodes for K1
      https://github.com/spacemit-com/linux/commit/eac600d5cc42b04e799fb65169b8f4060773381b

Best regards,
-- 
Yixun Lan <dlan@kernel.org>

