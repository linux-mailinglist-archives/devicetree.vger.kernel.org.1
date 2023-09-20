Return-Path: <devicetree+bounces-1847-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F08C27A89D6
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 18:58:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A3471282185
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 16:58:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B84C3E486;
	Wed, 20 Sep 2023 16:58:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D00F79EE
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 16:58:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DF9ACC433C8;
	Wed, 20 Sep 2023 16:58:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695229103;
	bh=NkzhFjKou/RnvV0T9JyYqksnCrQ9k/JO/XAlDTFE8h8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=HuQjdcQQ896wg91vT4h3+0DR8sXcYdW/CXZBfDTNBBc7Nxi7y0FN8Qt7K1Fr0vB2z
	 4xzQKOcqAajLlrXUiVjaGlNWzW1QbO6ISca4cNk7L49DTfKtMYqRVIF6cgY3QoV4R3
	 cZ6+DlJwiFsxrJrNc2QdRtLVEUfOGd0f+JtPVcgwEyI8VOuAGHu9kbNZAEeZXNbonv
	 A140se8G6GCdBwWb3xgdbikKiuKj6T4fXTGwh3a0/T+YHD0E+X/JdNWANgSG6h23ua
	 GRt40Kfih9ajpTUrqMmQiGa0o2AmzQCkj2vUvwmULKA05hNJYoVfKfdPsVxZC55Nsv
	 jG6YNkmbNnmvQ==
From: Bjorn Andersson <andersson@kernel.org>
To: Suman Anna <s-anna@ti.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Mathieu Poirier <mathieu.poirier@linaro.org>,
	MD Danish Anwar <danishanwar@ti.com>
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-remoteproc@vger.kernel.org,
	linux-omap@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	vigneshr@ti.com,
	srk@ti.com,
	nm@ti.com
Subject: Re: [PATCH v2] dt-bindings: remoteproc: pru: Add Interrupt property
Date: Wed, 20 Sep 2023 10:02:26 -0700
Message-ID: <169522934569.2501390.13365925421502228955.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230814095141.3526684-1-danishanwar@ti.com>
References: <20230814095141.3526684-1-danishanwar@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit


On Mon, 14 Aug 2023 15:21:41 +0530, MD Danish Anwar wrote:
> Add interrupts and interrupt-names protperties for PRU and RTU cores.
> 
> 

Applied, thanks!

[1/1] dt-bindings: remoteproc: pru: Add Interrupt property
      commit: d93f191b95bec3c913978eb18c6297e797915993

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

