Return-Path: <devicetree+bounces-281000-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OPZ+AhbuxGnN5AQAu9opvQ
	(envelope-from <devicetree+bounces-281000-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 09:28:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 67356331545
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 09:28:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 21D0330E5099
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 08:20:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57D4B3B960F;
	Thu, 26 Mar 2026 08:19:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iWVQGp3O"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00D483B7B97;
	Thu, 26 Mar 2026 08:19:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774513169; cv=none; b=hJsx3dpVf24/E6CKudVRU0i21Y1bJpNmbAVePIzo3fSHQEIt9xzMeN8jQNVEzSwWsceDPZEs1wiDTj7eP/0GFeqRf3cHNUW//q5lrjQJrdl2WRUQmDAkj224u7Gdqq1MskEgcEUendLWvpBE1AqP60C8whFVXk6NtSEEaJ+s4Lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774513169; c=relaxed/simple;
	bh=j7dEXpshropQggUha1Yhid1uTd6fGFNzT/dBvVT5ZnY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ksmf+saM4XaLlX5ArB9FgGmAj01hp3tTh7q0Vj+L0Np31KSUOadR32nAxIuQH/6lugg/wD/SsnTA4d05rfhtJs84HLq3eqL35xJKNo+RDAB3DXGBCWaFdBunLEhaH4Ymffozi6nQ7ZGUg5Euot7NPoDTS7WHOGN9MGCnyDgw1ic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iWVQGp3O; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C37A3C116C6;
	Thu, 26 Mar 2026 08:19:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774513168;
	bh=j7dEXpshropQggUha1Yhid1uTd6fGFNzT/dBvVT5ZnY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iWVQGp3OAxEx2usPa1FpmekCldyhV7PnB8HuiIJp20xt7ttCcihLz8Eo+seAkSeav
	 zgMWcwQoW61jIebj2W9FxY/C7Waxt7peP7iL8HrH991e3uRuLDsdbBmwRo0qxUu1fp
	 eLqimMZUaHD3OLKx3+falPd3RdsrbGHQUXbZluRIEvDbQWO0Ai7sXrThbX0r8AVou4
	 KMzqd85XQC+E0tKTkDbhPD7mLsyOlwxuZ3A71SAFB/RpUaqFu8QOc8KRFrkS/XWj4r
	 uoD28h85EqZkYP/11PJqjUyrJ2wFjwZliDGya31jSve24hcO/a6RenYbWXL2j3EgHe
	 bvVfVAreFfauA==
Date: Thu, 26 Mar 2026 09:19:25 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Nick Xie <nick@khadas.com>
Cc: neil.armstrong@linaro.org, khilman@baylibre.com, 
	martin.blumenstingl@googlemail.com, jbrunet@baylibre.com, jic23@kernel.org, dlechner@baylibre.com, 
	andy@kernel.org, krzk+dt@kernel.org, robh@kernel.org, conor+dt@kernel.org, 
	linux-iio@vger.kernel.org, linux-amlogic@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/4] dt-bindings: iio: adc: amlogic,meson-saradc: add
 S4 compatible
Message-ID: <20260326-secret-quartz-booby-3d3e61@quoll>
References: <20260325070618.81955-1-nick@khadas.com>
 <20260325070618.81955-2-nick@khadas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260325070618.81955-2-nick@khadas.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-281000-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[linaro.org,baylibre.com,googlemail.com,kernel.org,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,khadas.com:email]
X-Rspamd-Queue-Id: 67356331545
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 25, 2026 at 03:06:15PM +0800, Nick Xie wrote:
> Add the compatible string for the SARADC (Successive Approximation
> Register ADC) IP block found in the Amlogic Meson S4 SoC.
> 
> There are no known differences between the SARADC on S4 and the one
> on G12A. Therefore, it uses "amlogic,meson-g12a-saradc" as a proper
> specific fallback.
> 
> Also add a comment indicating that "amlogic,meson-saradc" must not be
> used for new devices. It's a made up compatible string that does not
> correspond to a specific hardware generation and is not used to match
> any driver. For old devices we keep it as it's part of the ABI.
> 
> Signed-off-by: Nick Xie <nick@khadas.com>

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


