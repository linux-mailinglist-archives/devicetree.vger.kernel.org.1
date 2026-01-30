Return-Path: <devicetree+bounces-261265-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oG2FA0zZfGlbOwIAu9opvQ
	(envelope-from <devicetree+bounces-261265-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 17:16:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 53D8DBC721
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 17:16:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 00910300879E
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 16:16:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D5201F91D6;
	Fri, 30 Jan 2026 16:16:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YODOXMXm"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE8DB2AD0C;
	Fri, 30 Jan 2026 16:16:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769789769; cv=none; b=Yr0oG72RykLi5NCQXe9XL5pBG5d0ypQP0KJkawr1l/dPy03WWV6tHecwPnt5HgnijNiKxyJl+Sua43wWCil/zzZAWwiNJHC9AUplfcr82YORVWG8XQeHWCTLVKwooiO6cmIKbJVj5Y3//g9asFRUB3HOs2zvKP+ZykoPARHSZZc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769789769; c=relaxed/simple;
	bh=zmT6OjQUa2TS7MtZr7MQ+G04gSyQhzjannkAFVQoleA=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=d2GK828fKHx9nA8qdIvJXsGSYSld5VWnH2wi4QJIH6LQGC/keIc+t4FCzfXFaBkSqpjeAUTGzJmxHNKFMZF71jAXhx6a3ib+qA4meg2c1Bx6bElAXHOOA6oplq+pj4/s0nP9hbX3K+Qt07A+U36Pe1j+ndJxt0Ob7AIozQZ3oR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YODOXMXm; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1972DC4CEF7;
	Fri, 30 Jan 2026 16:16:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769789768;
	bh=zmT6OjQUa2TS7MtZr7MQ+G04gSyQhzjannkAFVQoleA=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=YODOXMXm4lvnD2HehtSbvyybpPy2Z6scor2ksHJ4CfoYMY5uvOpkPdLdjQo+ohT9W
	 lzym7r3CoEBjyDbZqFp6kg3JfIJjKzkeFwGcvVpWt+UW4qi3x46bsfQh/BmqYGIQE8
	 BRt3yvRqKtNnvmigwu+YqeGOLU+KzCJiymShXtS5aJMO0CK9ci3GKU1t/aMLRzD2FI
	 LxI26EwG9l+WeKPWF5ujS6206tPjDANzBWAz//jfT1S9jGtD+1QjugOxnvncQg0L/Q
	 U7fmFRVf7uDkBaodtuqZ168a8J7N2gzGb5WVInsm5OyZnIHhceUvGSV9teiw4c2ifw
	 cxfRKT81qT9Bw==
Message-ID: <5be5e1e2-d9aa-4236-8bcf-68c9821ad82e@kernel.org>
Date: Fri, 30 Jan 2026 10:16:03 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/2] Add Agilex eMMC daughter card support
Content-Language: en-US
To: tzeyee.ng@altera.com, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <cover.1769409037.git.tzeyee.ng@altera.com>
From: Dinh Nguyen <dinguyen@kernel.org>
In-Reply-To: <cover.1769409037.git.tzeyee.ng@altera.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261265-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dinguyen@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,altera.com:email,0.0.0.4:email]
X-Rspamd-Queue-Id: 53D8DBC721
X-Rspamd-Action: no action



On 1/26/26 00:42, tzeyee.ng@altera.com wrote:
> From: Ng Tze Yee <tzeyee.ng@altera.com>
> 
> The Agilex SoCDK supports interchangeable daughter cards for different
> storage configurations. This series adds support for the eMMC daughter
> card variant.
> 
> The eMMC daughter card is mutually exclusive with the default SDMMC
> daughter card as it occupies the same physical slot on the SoCDK.
> Therefore, a separate device tree is required to properly configure
> the system when using the eMMC variant.
> 
> This series:
> - Documents the new compatible string for the eMMC daughter card
> - Adds a new DTS file based on the existing NAND variant with eMMC-
>    specific MMC controller configuration
> 
> Changes in v3:
> - Update copyright from Altera to Intel
> - Append "eMMC daughter board" to model string for clarity
> - Fix ethernet-phy@0 to ethernet-phy@4 address
>    socfpga_agilex_socdk_emmc.dts
> 
> Changes in v2:
> - Add new compatible string for the eMMC daughter card in the binding file
> - Fix space indentation in socfpga_agilex_socdk_emmc.dts
> - Fix compatible string in socfpga_agilex_socdk_emmc.dts
> - Rephase commit messages for clarity
> 
> Ng Tze Yee (2):
>    dt-bindings: intel: Add Agilex eMMC support
>    arm64: dts: socfpga: agilex: add emmc support
> 
>   .../bindings/arm/intel,socfpga.yaml           |   1 +
>   arch/arm64/boot/dts/intel/Makefile            |   1 +
>   .../dts/intel/socfpga_agilex_socdk_emmc.dts   | 105 ++++++++++++++++++
>   3 files changed, 107 insertions(+)
>   create mode 100644 arch/arm64/boot/dts/intel/socfpga_agilex_socdk_emmc.dts
> 

Applied!

Thanks,
Dinh


