Return-Path: <devicetree+bounces-153998-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E59DFA4E957
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 18:39:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 40DA18E2CE0
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 16:46:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 924CA29AAF2;
	Tue,  4 Mar 2025 16:23:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dv5Qnutq"
X-Original-To: devicetree@vger.kernel.org
Received: from beeline2.cc.itu.edu.tr (beeline2.cc.itu.edu.tr [160.75.25.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7F529AAF4
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 16:23:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=160.75.25.116
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741105408; cv=pass; b=S+VSVCBL05aKtiXyT/CLK4D4lPbMBHweTwYIDOTLyMTxfrVfxeTy9ZjaSuA/648ld7kLBdIyqKU9xQVPAIprBGSZRxNYrZWlzM1rqJE5VVeN5w3P3E0wZPOa9Gn2FSF/69c3c6eyir23ZZBWWiHLcxUSijWiTFGgw7PsHL7zuFo=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741105408; c=relaxed/simple;
	bh=U7M2Y7GgfOD5FgmP0/yeWr/zLGKqkQ7WQ1NWRxr7fog=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Y8bcrORprE3raaBsdRKPw9BfNbDI7JPihlAJ15IyQKpY2aFSW7RWFAiQVfBkJisvjrVgblgm6vdRhVkbzSjODHgpNTTcCJ1TV0RcuTtAR6r/OukC1wp23nv5JXys1ShAsD+AE8MgsjyLLvPjL7n75tQb3n56rVlTMMsUEobXQhA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=kernel.org; spf=none smtp.mailfrom=cc.itu.edu.tr; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dv5Qnutq; arc=none smtp.client-ip=10.30.226.201; arc=pass smtp.client-ip=160.75.25.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=kernel.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=cc.itu.edu.tr
Received: from lesvatest1.cc.itu.edu.tr (lesvatest1.cc.itu.edu.tr [10.146.128.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by beeline2.cc.itu.edu.tr (Postfix) with ESMTPS id 56F9840F1CE6
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 19:23:25 +0300 (+03)
X-Envelope-From: <root@cc.itu.edu.tr>
Received: from lesva1.cc.itu.edu.tr (unknown [160.75.70.79])
	by lesvatest1.cc.itu.edu.tr (Postfix) with ESMTP id 4Z6ggR5GJYzG2dy
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 19:12:19 +0300 (+03)
Received: by le1 (Postfix, from userid 0)
	id 1815C42729; Tue,  4 Mar 2025 19:12:12 +0300 (+03)
Authentication-Results: lesva1.cc.itu.edu.tr;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dv5Qnutq
X-Envelope-From: <linux-kernel+bounces-541760-bozkiru=itu.edu.tr@vger.kernel.org>
Authentication-Results: lesva2.cc.itu.edu.tr;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dv5Qnutq
Received: from fgw2.itu.edu.tr (fgw2.itu.edu.tr [160.75.25.104])
	by le2 (Postfix) with ESMTP id BBED4423FC
	for <bozkiru@itu.edu.tr>; Mon,  3 Mar 2025 16:06:45 +0300 (+03)
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by fgw2.itu.edu.tr (Postfix) with SMTP id 95EBB2DCE4
	for <bozkiru@itu.edu.tr>; Mon,  3 Mar 2025 16:06:45 +0300 (+03)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3EC611890505
	for <bozkiru@itu.edu.tr>; Mon,  3 Mar 2025 13:06:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB0E82116F0;
	Mon,  3 Mar 2025 13:06:12 +0000 (UTC)
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B8C920D4EA;
	Mon,  3 Mar 2025 13:06:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741007170; cv=none; b=LukQdUa+IAZiIQOgPOZRKaSYVnkJiifVJRYZSxtJFvcLBcRWvxC5toki1DaMyu28ZDJCThu9B5iUoynxwOd/SZwfABbu+6DB2Je92MUwzNEaijWlwRCkh6m+oB4/vqrR3/QGuYlpwd4lOtV8AFP0tkEmGyIytSLyRNXBUjupIgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741007170; c=relaxed/simple;
	bh=U7M2Y7GgfOD5FgmP0/yeWr/zLGKqkQ7WQ1NWRxr7fog=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rhWwuCUoVhfJ8Aarx4JnXTgWWhWD8zuA+wI/u58/dohgI759uyDmYH9uJAOU3H3VY7hoK5u2ickiT96alS9E1zmHfEakt4xX/VfnMr9M8oFbXFlnFVW5kLM2F/fwh+uiF2mwU1P5tEN+AV9mG9wDF60FkwrM+IxlhGxbyvbd3rI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dv5Qnutq; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 966F3C4CED6;
	Mon,  3 Mar 2025 13:06:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741007169;
	bh=U7M2Y7GgfOD5FgmP0/yeWr/zLGKqkQ7WQ1NWRxr7fog=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dv5QnutqMhY/XAsekkSXJrY0588QyXsYiwaE4fbDhCSBEv8wYviT7sFDWqcwMkMvG
	 5WYxCeIKo+vzFS0/MRNQ7D0vi4xByN+gsxwykOE5AwjiXKyC0ra2FSNTEJy4h0Exmu
	 koOMNTwS60k2KkGXB3XuJkif9Ehyr7jog06uaxGZoWS9Q67Td6sVlkQYxllVDhPiWU
	 4GsK0KohBvshnKe6WFRTqV4SEA75XO0T60eMzJvdiijxHp6M/Dm1kF5RUUJgJ0eMu3
	 PTKXmwFIgGZMn5S93JhvdKJyK1sjOMqrp1lSNoh/cO3zHTFw1fZ7h0eFNI4VwYn+v+
	 jULFpATjJI67A==
Date: Mon, 3 Mar 2025 07:06:07 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Hironori KIKUCHI <kikuchan98@gmail.com>
Cc: Conor Dooley <conor+dt@kernel.org>, Jakub Kicinski <kuba@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Simona Vetter <simona@ffwll.ch>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
	Maxime Ripard <mripard@kernel.org>, devicetree@vger.kernel.org,
	Neil Armstrong <neil.armstrong@linaro.org>,
	David Airlie <airlied@gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: vendor-prefixes: Add hothmi vendor
 prefix
Message-ID: <174100716718.1436781.17169517427487760851.robh@kernel.org>
References: <20250226112552.52494-1-kikuchan98@gmail.com>
 <20250226112552.52494-2-kikuchan98@gmail.com>
Precedence: bulk
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250226112552.52494-2-kikuchan98@gmail.com>
X-ITU-Libra-ESVA-Information: Please contact Istanbul Teknik Universitesi for more information
X-ITU-Libra-ESVA-ID: 4Z6ggR5GJYzG2dy
X-ITU-Libra-ESVA: No virus found
X-ITU-Libra-ESVA-From: root@cc.itu.edu.tr
X-ITU-Libra-ESVA-Watermark: 1741709554.85511@YPn4Bmlw704GuAvCZpelUw
X-ITU-MailScanner-SpamCheck: not spam


On Wed, 26 Feb 2025 20:25:48 +0900, Hironori KIKUCHI wrote:
> Add prefix for Hotdisplay Technology Co.Ltd
> 
> Signed-off-by: Hironori KIKUCHI <kikuchan98@gmail.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>



