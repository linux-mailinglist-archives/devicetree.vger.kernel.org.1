Return-Path: <devicetree+bounces-265167-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0MDRGpYOjmmS+wAAu9opvQ
	(envelope-from <devicetree+bounces-265167-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 18:32:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id DB58612FF29
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 18:32:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CEBB33011A47
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 17:31:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19B231C68F;
	Thu, 12 Feb 2026 17:31:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hf6KdEVW"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83EB025B1DA;
	Thu, 12 Feb 2026 17:31:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770917516; cv=none; b=mOMlRWVtPKOoH0PezlAQZwBa/NbwxK9ICzSJegZhgJV7ASnnCiZjUMdWGRMmrH+TUilp6l+Z2Sohz3m0Nt8WPx+/qNcJ3ZeOEDAGCqYT/Ep3Dqm4R9tjnQnXg89jmm9q5raBdyKz/ueaQb5olOptbg1aAdmBWjWJi5QOvmOryOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770917516; c=relaxed/simple;
	bh=TrYRVRvH7Nj0gYOh2vxI9kZs3a5bJivRNMzIp57hql0=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=mKKbM6FMvOvQa2kcL7gbW8TgWmSsASSPQ38nhbef0cPVVbylamFheiqzJ+q82mKFdZ9B5HHCciNjDZ8lL633Wrh9f+regIF3S3j3fe360zDIqnZBPRiYKTDvu9kIqk2SRRpdgC0YVaNcUbetXp5RwRjzo1l/sQCdV5sQ46e5wvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hf6KdEVW; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E2A4AC4CEF7;
	Thu, 12 Feb 2026 17:31:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770917516;
	bh=TrYRVRvH7Nj0gYOh2vxI9kZs3a5bJivRNMzIp57hql0=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=Hf6KdEVWiXJJX8PRf3NCMFpdvhiQ3bP3Y5No9R1b1JNkBJHvdL3xd+Hbavr+cY6ag
	 zuBIi2ynkFFuQC8XqSigaErlJvHWZ2peVXnbKnbcYLZfl7Ub4o0ZO+bOd2gb2pvBZ9
	 atafwJl9TYNueQk1ceyAufQBchCWJeKrvvYNSA+FPTm2cBwBJLvzIXn0314sVypPUv
	 pNQHWBXxv5XpYCJZVr8cr5iPl7Regrof6HBC2R6/Et2yx0Rg8xxB/fi003py0gjLAM
	 RjB0lTfDGIqUfNNrC3rd9U3nd1lPih9j0gBuRJMLmqH47PFUs7XM6Wpx6Vcj5oR6hk
	 5itxzU9nslxlQ==
Date: Thu, 12 Feb 2026 11:31:55 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-iio@vger.kernel.org, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, linux-kernel@vger.kernel.org, 
 Conor Dooley <conor+dt@kernel.org>, Andy Shevchenko <andy@kernel.org>, 
 Jonathan Cameron <jic23@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, devicetree@vger.kernel.org
To: Ariana Lazar <ariana.lazar@microchip.com>
In-Reply-To: <20260212-mcp48feb02-v1-1-ce5843db65db@microchip.com>
References: <20260212-mcp48feb02-v1-0-ce5843db65db@microchip.com>
 <20260212-mcp48feb02-v1-1-ce5843db65db@microchip.com>
Message-Id: <177091751536.449067.3108703544618306687.robh@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: iio: dac: add support for Microchip
 MCP48FEB02
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-265167-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: DB58612FF29
X-Rspamd-Action: no action


On Thu, 12 Feb 2026 14:48:34 +0200, Ariana Lazar wrote:
> This is the device tree schema for iio driver for Microchip
> MCP48FxBy1/2/4/8 series of buffered voltage output Digital-to-Analog
> Converters with nonvolatile or volatile memory and an SPI Interface.
> 
> The families support up to 8 output channels.
> 
> The devices can be 8-bit, 10-bit and 12-bit.
> 
> Signed-off-by: Ariana Lazar <ariana.lazar@microchip.com>
> ---
>  .../bindings/iio/dac/microchip,mcp48feb02.yaml     | 299 +++++++++++++++++++++
>  MAINTAINERS                                        |   6 +
>  2 files changed, 305 insertions(+)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:
./Documentation/devicetree/bindings/iio/dac/microchip,mcp48feb02.yaml:275:5: [warning] wrong indentation: expected 2 but found 4 (indentation)

dtschema/dtc warnings/errors:

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20260212-mcp48feb02-v1-1-ce5843db65db@microchip.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


