Return-Path: <devicetree+bounces-270551-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UMjdHcLtpmlKaQAAu9opvQ
	(envelope-from <devicetree+bounces-270551-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 15:18:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E0D21F14D8
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 15:18:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 43E5730EF7D8
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 14:12:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6555D3AEF53;
	Tue,  3 Mar 2026 14:12:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="UDHVu/Fj"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 241C93AE18E;
	Tue,  3 Mar 2026 14:12:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772547176; cv=none; b=Z5up9FyKmenFsDKtMTeqp/nlPg/xs71iAFLWWoMhnRyJMYixIyvM7Vbzu1h0ZX9RJA0ZMRWG9Kt/zWsgmySdikSko9KKuCxXGsVBjLn2ZHvMdorIxu3KooRslZ6gsyzc6F9Ig3JBIR8Q2EXYn5FoTSEkkqJL9WFk7mrqP6raUiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772547176; c=relaxed/simple;
	bh=I1RcmXzbZMBrvUOvOt+mIG2zd3hNEJtpd9z3pYneLCU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=i4QCGFhFgXH05Doc4oqIZxBmUIsvTySSA496tehVc376mmwjy66wA0nIPtIchts7hW3PTPEXdb0F1rKWhPytepiC0G90wC77YGceWCV4+hsuvFFIimf3ArZd4oNVXyvyXg0+CRaPUJTzsaDFgCKWhYfFvMxbv3095/86HGPYtqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=UDHVu/Fj; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1772547173;
	bh=I1RcmXzbZMBrvUOvOt+mIG2zd3hNEJtpd9z3pYneLCU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=UDHVu/Fjr+fk4c6bX+qQg8zJqvbVYEATwZlstMqA7VCjpgNMmGNSxYMwxR37rbM5l
	 bmvb63r9bm9DeTE/SgNX2YvHp8Bny07/E4cHgbw1Z2vVu6ryVTO0DLxkUmYsDmmylU
	 saCIuMIloFvRm3Etr/9RjSq9dDKD1dvd/dFvZ+r6+cP8KA7EaNjoyz6EdloDgN1NzK
	 +5TcPMzkII2plQxzUUdfPJycQuxQwrFTKP+zlD2MntzudUaOFZcR96FceLq2ZBMEBt
	 luNDUcnQO2iQVrJVXta2BM3XfKfjWsiWYeIK1rEWemZxQcvEkEm0hgf69qu80kwjks
	 7+084pw1iPJ0A==
Received: from [192.168.1.100] (2-237-20-237.ip236.fastwebnet.it [2.237.20.237])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id DC2F617E03E5;
	Tue,  3 Mar 2026 15:12:52 +0100 (CET)
Message-ID: <f5290ec5-2c54-41cd-b926-44964499fb7b@collabora.com>
Date: Tue, 3 Mar 2026 15:12:52 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: arm: mediatek: audsys: fix formatting issues
To: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Eugen Hristev <eugen.hristev@linaro.org>
Cc: kernel@collabora.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org
References: <20260303-mtk-audsys-dtbinding-check-warnings-v1-1-e4e1b62f060e@collabora.com>
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Content-Language: en-US
In-Reply-To: <20260303-mtk-audsys-dtbinding-check-warnings-v1-1-e4e1b62f060e@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 1E0D21F14D8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270551-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[collabora.com,kernel.org,gmail.com,linaro.org];
	DKIM_TRACE(0.00)[collabora.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[angelogioacchino.delregno@collabora.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

Il 03/03/26 12:58, Louis-Alexis Eyraud ha scritto:
> Fix indentation and drop duplicate newline to resolve the following
> 'make dt_binding_check' warnings:
> ```
> ./Documentation/devicetree/bindings/arm/mediatek/mediatek,audsys.yaml:52:2:
>    [warning] wrong indentation: expected 2 but found 1 (indentation)
> ./Documentation/devicetree/bindings/arm/mediatek/mediatek,audsys.yaml:84:1:
>    [warning] too many blank lines (2 > 1) (empty-lines)
> ```
> 
> Fixes: a8e3d66ff5c0 ("dt-bindings: arm: mediatek: audsys: Support mt8192-audsys variant")
> Signed-off-by: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>



