Return-Path: <devicetree+bounces-17513-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B178A7F2B65
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 12:04:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E1E501C218A9
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 11:03:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74FB0482DF;
	Tue, 21 Nov 2023 11:03:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from bmailout3.hostsharing.net (bmailout3.hostsharing.net [IPv6:2a01:4f8:150:2161:1:b009:f23e:0])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F927F4;
	Tue, 21 Nov 2023 03:03:36 -0800 (PST)
Received: from h08.hostsharing.net (h08.hostsharing.net [83.223.95.28])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256
	 client-signature RSA-PSS (4096 bits) client-digest SHA256)
	(Client CN "*.hostsharing.net", Issuer "RapidSSL Global TLS RSA4096 SHA256 2022 CA1" (verified OK))
	by bmailout3.hostsharing.net (Postfix) with ESMTPS id 3EADC100DCED2;
	Tue, 21 Nov 2023 12:03:34 +0100 (CET)
Received: by h08.hostsharing.net (Postfix, from userid 100393)
	id 2303E3308A; Tue, 21 Nov 2023 12:03:34 +0100 (CET)
Date: Tue, 21 Nov 2023 12:03:34 +0100
From: Lukas Wunner <lukas@wunner.de>
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-integrity@vger.kernel.org, devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Lino Sanfilippo <LinoSanfilippo@gmx.de>,
	Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 3/3] dt-bindings: tpm: Document Microsoft fTPM bindings
Message-ID: <20231121110334.GC22827@wunner.de>
References: <cover.1700555862.git.lukas@wunner.de>
 <ad4b484da8190c83902b2525823ceb3439a7576e.1700555862.git.lukas@wunner.de>
 <170056424078.1245511.3802928266274347339.robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <170056424078.1245511.3802928266274347339.robh@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Tue, Nov 21, 2023 at 03:57:21AM -0700, Rob Herring wrote:
> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):

Your bot hasn't read the cover letter, which discusses those errors:

https://lore.kernel.org/linux-devicetree/cover.1700555862.git.lukas@wunner.de/

