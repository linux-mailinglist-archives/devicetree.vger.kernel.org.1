Return-Path: <devicetree+bounces-250460-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id AD3E0CE92D7
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 10:14:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A5BB23093DEA
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 09:11:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9920296BAB;
	Tue, 30 Dec 2025 09:11:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from cstnet.cn (smtp21.cstnet.cn [159.226.251.21])
	(using TLSv1.2 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C2EE2848A8;
	Tue, 30 Dec 2025 09:11:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=159.226.251.21
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767085891; cv=none; b=QKg2dc8iwS5eHYXO6hWwYZHnwQsDl+3a8XP5D1Q3LWzR9zEXjpInu2cT9CvJRGYCURS6HVXiItZN1Spi56H0yckZ8dMGxd1oNgw8oBobf1/RKFvHLC2ef0skmoRWsYKYzK3LbcdtYw9vP5mL+vtJOcb1zuau0EbIpjAsm8fWWRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767085891; c=relaxed/simple;
	bh=zEsUJ+n58VCAEb4gLGwntCqm1KuKCU2KvtsHteWaYko=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WDwhxZBRFlsNHpVSMeaxI02Sjk2zELHfUOuP+ABKdRSdRfJfnM/KfvjXosqijQTVmsfqzzZcq/gNylpZJq68cmZ5U7p6xFtReWWDwpMWKh9WmlubkXs3VhZm/E/luy681hKwHeoiHrjjK632+Ue+IiUD6P12KXdmuXG/6kJiNws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=isrc.iscas.ac.cn; spf=pass smtp.mailfrom=isrc.iscas.ac.cn; arc=none smtp.client-ip=159.226.251.21
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=isrc.iscas.ac.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=isrc.iscas.ac.cn
Received: from duge-virtual-machine (unknown [223.160.207.108])
	by APP-01 (Coremail) with SMTP id qwCowAA33Wgtl1NpHDdYAg--.1201S2;
	Tue, 30 Dec 2025 17:11:12 +0800 (CST)
Date: Tue, 30 Dec 2025 17:11:08 +0800
From: Jiayu Du <jiayu.riscv@isrc.iscas.ac.cn>
To: conor@kernel.org
Cc: robh@kernel.org, krzk+dt@kernel.org, pjw@kernel.org, palmer@dabbelt.com,
	aou@eecs.berkeley.edu, devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
	alex@ghiti.fr, cyy@cyyself.name, kingxukai@zohomail.com,
	TroyMitchell988@gmail.com, gaohan@iscas.ac.cn, me@ziyao.cc
Subject: Re: [PATCH 1/2] dt-bindings: riscv: canaan: add 100ask K230 boards
 compatible strings
Message-ID: <aVOXLPijq8iByiOy@duge-virtual-machine>
References: <20251229061318.16756-1-jiayu.riscv@isrc.iscas.ac.cn>
 <20251229061318.16756-2-jiayu.riscv@isrc.iscas.ac.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251229061318.16756-2-jiayu.riscv@isrc.iscas.ac.cn>
X-CM-TRANSID:qwCowAA33Wgtl1NpHDdYAg--.1201S2
X-Coremail-Antispam: 1UD129KBjvJXoW7ZF4xJF4rAw4xJr43tr18Xwb_yoW8JFykpF
	Z7CFWUKFW5Ar1ag392qF4xKa17Zr1kCr13GryYyryDKws8AF95t34fKws5W3W8ZF48JFWj
	9F409r45CFW2yFJanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUvlb7Iv0xC_Cr1lb4IE77IF4wAFF20E14v26r4j6ryUM7CY07I2
	0VC2zVCF04k26cxKx2IYs7xG6r1S6rWUM7CIcVAFz4kK6r1j6r18M28lY4IEw2IIxxk0rw
	A2F7IY1VAKz4vEj48ve4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_Jr0_JF4l84ACjcxK6xII
	jxv20xvEc7CjxVAFwI0_Gr0_Cr1l84ACjcxK6I8E87Iv67AKxVWUJVW8JwA2z4x0Y4vEx4
	A2jsIEc7CjxVAFwI0_Gr1j6F4UJwAS0I0E0xvYzxvE52x082IY62kv0487Mc02F40EFcxC
	0VAKzVAqx4xG6I80ewAv7VC0I7IYx2IY67AKxVWUGVWUXwAv7VC2z280aVAFwI0_Jr0_Gr
	1lOx8S6xCaFVCjc4AY6r1j6r4UM4x0Y48IcVAKI48JM4IIrI8v6xkF7I0E8cxan2IY04v7
	MxkF7I0En4kS14v26r1q6r43MxAIw28IcxkI7VAKI48JMxC20s026xCaFVCjc4AY6r1j6r
	4UMI8I3I0E5I8CrVAFwI0_Jr0_Jr4lx2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE17CEb7AF
	67AKxVWUtVW8ZwCIc40Y0x0EwIxGrwCI42IY6xIIjxv20xvE14v26r1j6r1xMIIF0xvE2I
	x0cI8IcVCY1x0267AKxVW8JVWxJwCI42IY6xAIw20EY4v20xvaj40_Jr0_JF4lIxAIcVC2
	z280aVAFwI0_Jr0_Gr1lIxAIcVC2z280aVCY1x0267AKxVW8Jr0_Cr1UYxBIdaVFxhVjvj
	DU0xZFpf9x07U_HUDUUUUU=
X-CM-SenderInfo: 5mld534oul2uny6l223fol2u1dvotugofq/

On Mon, Dec 29, 2025 at 02:13:17PM +0800, Jiayu Du wrote:
> K230 CANMV DSHANPI is a development board produced by 100ASK.
> 
> Add compatible string for the board and its SoM.
> 
> Signed-off-by: Jiayu Du <jiayu.riscv@isrc.iscas.ac.cn>
> ---
> 
> The hardware details are available here[1].
> 
> [1]: https://github.com/100askTeam/eLinuxAI-TrainingDocs/blob/master/docs/CanaanK230/part1/01-Introductionhardwareresources.md
> 
>  Documentation/devicetree/bindings/riscv/canaan.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/riscv/canaan.yaml b/Documentation/devicetree/bindings/riscv/canaan.yaml
> index f9854ff43ac6..b9f095bc6021 100644
> --- a/Documentation/devicetree/bindings/riscv/canaan.yaml
> +++ b/Documentation/devicetree/bindings/riscv/canaan.yaml
> @@ -48,6 +48,11 @@ properties:
>                - canaan,k230-usip-lp3-evb
>            - const: canaan,kendryte-k230
>  
> +        items:

Sorry, I didn't test the bindings before sending it. Now I realize this.
It's my fault. There is a minus sign missing before items.

> +          - const: 100ask,canmv-k230-dshanpi
> +          - const: 100ask,canmv-k230-module-dshanpi
> +          - const: canaan,kendryte-k230
> +
>  additionalProperties: true
>  
>  ...
> -- 
> 2.52.0
> 


