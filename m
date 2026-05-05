Return-Path: <devicetree+bounces-293186-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mBY6IaUX+mlYJQMAu9opvQ
	(envelope-from <devicetree+bounces-293186-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 05 May 2026 18:15:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E31AF4D1116
	for <lists+devicetree@lfdr.de>; Tue, 05 May 2026 18:15:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EF84D3050939
	for <lists+devicetree@lfdr.de>; Tue,  5 May 2026 16:09:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CB4E48B36B;
	Tue,  5 May 2026 16:09:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n57oGSOy"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1907548B360;
	Tue,  5 May 2026 16:09:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777997348; cv=none; b=mlrf23RAQduuZfePdfc5/hTldhyq/PIvPKbN+8kdL1iA3Z2vQnv6WWOoKtVkEc1rYJtzKF6hWw5Gv4KkNeiSF4rHPyy0JrJiQOhFgJZSu+HEEVb5hjK6ixtc0iO1ffonA/5ua0li8Qhy9L/ubL1iUUV5iC0uOo1HOOB7eZ9DLTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777997348; c=relaxed/simple;
	bh=NVOb4O9FNKVS7kwF8cMaWuyEURjQjrY/0sxa8OgxxVg=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=QkC61DeI3c4WegwwjxO7doEicS0LocwA7YwydlogX3AmSdRJshfRK1134i5zpQL8ve++i4BLtBF/VMggREQbJYBFcVP3Jd8fRYPIVPkVm8Y2NFAnPLvLzHCOan+YCXA6I11c6cpo8Q49LhDyTyoHy9DEKGjF2SSvYN8If3Nq5kA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n57oGSOy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 30871C2BCC7;
	Tue,  5 May 2026 16:09:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777997347;
	bh=NVOb4O9FNKVS7kwF8cMaWuyEURjQjrY/0sxa8OgxxVg=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=n57oGSOyWD/yPYiJcFetcXRUi07x1gy0Wuix5jW8Hyu6buxd+SteBUp/O7eu7JSgy
	 VWdNQ+6xarGP3rALg9anM2oFByXn/eXaytNUJBJMfwDbm6VqnFsaK+WiNCbwyfczdv
	 J7yJrEwdI3iY6wKHWHdiNP5aTiniRhN/4cy5bPJLI5H0Q1Ff+NI7xRUhZoYoczkW7W
	 cUTG/qv5INm4HncSHMoNDuDn/Bq6i2HuqRcmeZWG6wF8gESMH/x0FCyvAIYYoYauVT
	 C3UVTW4y1Ea7TujQvgDdBoO42IULhqwboHBtHtQzblLC9NeHPsm0YYiwAqyrPLlIA/
	 I4aX5vIsX2u2Q==
Message-ID: <432ad0ea-83f3-489d-a97c-21a0473dd341@kernel.org>
Date: Tue, 5 May 2026 11:09:06 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/2] arm64: dts: intel: set alias for i3c controllers
 for agilex5 variants and derivatives
Content-Language: en-US
To: Adrian Ng Ho Yin <adrian.ho.yin.ng@altera.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <cover.1777957556.git.adrian.ho.yin.ng@altera.com>
From: Dinh Nguyen <dinguyen@kernel.org>
In-Reply-To: <cover.1777957556.git.adrian.ho.yin.ng@altera.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: E31AF4D1116
X-Rspamd-Action: no action
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
	TAGGED_FROM(0.00)[bounces-293186-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[altera.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]

Hi Adrian,

On 5/5/26 00:15, Adrian Ng Ho Yin wrote:
> Agilex5 SoCFPGA variants and derivatives have 2 i3c controllers, a main
> master and a secondary master. Setting the alias for both i3c controllers
> to prevent bus id contention when both controllers are enabled which
> results in driver probe failures.
> 
> ---
> changelog
> v1->v2
> * Simplify commit titles
> 
> v2->v3
> * Update commit titles for clarity
> ---
> 
> Adrian Ng Ho Yin (2):
>    arm64: dts: socfpga: agilex5: set alias for i3c controllers
>    arm64: dts: socfpga: agilex3: set alias for i3c controller
> 

I've applied both patches.

Nit: I'm getting this checkpatch warning:

WARNING: From:/Signed-off-by: email address mismatch: 'From: Adrian Ng 
Ho Yin <adrianhoyin.ng@altera.com>' != 'Signed-off-by: Adrian Ng Ho Yin 
<adrian.ho.yin.ng@altera.com>'

Please try to fix this up for future submissions.

Thanks,
Dinh

