Return-Path: <devicetree+bounces-313396-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id z0E8A57JM2oyGQYAu9opvQ
	(envelope-from <devicetree+bounces-313396-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 12:34:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CA6A469F5C0
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 12:34:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=aOZBidIm;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313396-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-313396-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 43C623015E09
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 10:31:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F7943ECBE4;
	Thu, 18 Jun 2026 10:31:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A5EE3EB106;
	Thu, 18 Jun 2026 10:31:14 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781778676; cv=none; b=XzpZbP7aaxS3liQaMHHzscR3vEJtLGTPQVN7mb8gWGGLCV6YOiZRASTSEjQUkNw8apQ51hkbt9xMSSfQQ/2eofh2kRwxZJAOBA6I/so7J5R7p7tgcSF98Bs+yWsGPf4fO6CB0iqaFB3fFw56FRdTs2lDJMQT1OwLj9aYWEivV8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781778676; c=relaxed/simple;
	bh=OsSET8IjgVVBZCP14hbVjjx1dJ7t8dKg1+EZA6qaEiE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=DUAzQ77ZMenam/IL3P/H45/btgrRsS2yzKD0ytsF1mpEhxpT0cVb2wncKwg2mUuHExa1Ks1oCU3PnUbyGUTSJ8KdpY2gItjmhCl67yyaKXBT87MxCE0l6vpP0LkVetrJ2YAzYB76Prde/jbOMnOhDRuLQRGAJSh1dX/vPx4cTx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aOZBidIm; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6F3EA1F000E9;
	Thu, 18 Jun 2026 10:31:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781778674;
	bh=afZzxi5lZ2RVhuf2YgQmLnfeZ8awDX8a2TEcE8QbHbQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=aOZBidImeOrHU+/KjtfP6FPxLjTFuLhHh0N29tqtZI98Jmw4kdlrvKQ2rxBzwqWPX
	 Tr8yzZdqCxntHvvEJzwSUaz8eR9XfweiQ/qwZahVORar4v3Gm4iyWViNLIst2hpU61
	 y1nWtJEme/NPiuIJnxXzTjIBNoY++/e3AMMbLmIMG0iHU3/MHxLFSErJ3VmAjE68ss
	 Ut3dHM6gYabTR4VfymU0WuEbpxkwhI0TinhCKIAtEET8LvXN34S/S+ePvcpW3hX/o2
	 1XJhRDVSZWuBKCriyWSoGHaC93eCLmMNtfHjq3S1d1uVBEynuAgiG7Xoy7VRch/eUD
	 iM04KWiUsKESw==
From: Lee Jones <lee@kernel.org>
To: linux-arm-msm@vger.kernel.org, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>, 
 Fenglin Wu <fenglin.wu@oss.qualcomm.com>
Cc: David Collins <david.collins@oss.qualcomm.com>, 
 Subbaraman Narayanamurthy <subbaraman.narayanamurthy@oss.qualcomm.com>, 
 Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>, kernel@oss.qualcomm.com, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20260609-pmg1110-v1-1-6604d0adc907@oss.qualcomm.com>
References: <20260609-pmg1110-v1-1-6604d0adc907@oss.qualcomm.com>
Subject: Re: (subset) [PATCH] dt-bindings: mfd: qcom,spmi-pmic: Document
 PMG1110
Message-Id: <178177867115.2033262.14879162871727607183.b4-ty@b4>
Date: Thu, 18 Jun 2026 11:31:11 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.16-dev-ad80c
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:linux-arm-msm@vger.kernel.org,m:lee@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:sboyd@kernel.org,m:fenglin.wu@oss.qualcomm.com,m:david.collins@oss.qualcomm.com,m:subbaraman.narayanamurthy@oss.qualcomm.com,m:kamal.wadhwa@oss.qualcomm.com,m:kernel@oss.qualcomm.com,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[lee@kernel.org,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lee@kernel.org,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-313396-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CA6A469F5C0

On Tue, 09 Jun 2026 23:49:59 -0700, Fenglin Wu wrote:
> Add compatible string for PMG1110 which is used on Maili platform.

Applied, thanks!

[1/1] dt-bindings: mfd: qcom,spmi-pmic: Document PMG1110
      commit: 1becda6be273b5c5082590a2ebc38532a2a0086f

--
Lee Jones [李琼斯]


