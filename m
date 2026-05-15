Return-Path: <devicetree+bounces-297872-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gGYoFA92BmoUkAIAu9opvQ
	(envelope-from <devicetree+bounces-297872-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 03:25:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AC44548623
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 03:25:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D8766301EB6A
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 01:25:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 384E0367F44;
	Fri, 15 May 2026 01:25:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ultrarisc.com header.i=@ultrarisc.com header.b="LnaIlceD"
X-Original-To: devicetree@vger.kernel.org
Received: from ultrarisc.com (unknown [218.76.62.146])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C4293385BE
	for <devicetree@vger.kernel.org>; Fri, 15 May 2026 01:25:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=218.76.62.146
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778808332; cv=none; b=Z5h+Reo6p23fDxFxE4P7w02HFfCKwJMQlauH8X+7vKOhF0gZe2qkpCWYKJihjpF3ogFW1rAjmnbj6xjnhaHzBAiwHM3cWwNH+RN8YLBJJzwXVWsrxWRPmP2c1pbzcYLmepapYBw0nt+CsBNn0bqhHBYuVwfqYIODw6LHcbkN/XQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778808332; c=relaxed/simple;
	bh=SAl/M6+pt5PfCqQKnhF9VqWHdbRYWOx6jQgExwrGjxs=;
	h=MIME-Version:Content-Type:Subject:From:To:Cc:In-Reply-To:
	 References:Date:Message-Id; b=kQZG+ozFHnFy3XjTvDZlI1aqbmE9tp534pBcWNiFAQ1ooLlrd2oNDD1DSxkszMWuYL7QYO3BKOTeB421DruJnfDT7zDM8GFM12LM6+4u3InreIV+gxswtK2sFw30w8HolmSXt5qZvvnE9H+IvBgamxWiUs3PxXe9yMnX2buHOrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ultrarisc.com; spf=none smtp.mailfrom=ultrarisc.com; dkim=pass (1024-bit key) header.d=ultrarisc.com header.i=@ultrarisc.com header.b=LnaIlceD; arc=none smtp.client-ip=218.76.62.146
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ultrarisc.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=ultrarisc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ultrarisc.com; s=dkim; h=Received:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Subject:From:To:Cc:In-Reply-To:
	References:Date:Message-Id; bh=4ffrO+84Kc1oKpFePC+eVMKngBoKY09MB
	kPttDRWLfY=; b=LnaIlceDQD+FT2pKtSoecf+UzN0BJH4mKO4uYvxEZmd0QkijT
	Vw4vVfQLN6bJG6QiI0IAO0DDkirnyZGNNIQ/u+x52oor+7SD9EHreAFyTMCi43xi
	+bS16aI6ApfFbhupuek52N/vsFhdq15N7AQ5YuYShgmULzsU7ry0YW7BWs=
Received: from [127.0.0.1] (unknown [192.168.100.1])
	by localhost.localdomain (Coremail) with SMTP id AQAAfwAnYUIedgZqkmoEAA--.4956S2;
	Fri, 15 May 2026 09:25:50 +0800 (CST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Subject: Re: [PATCH 1/9] dt-bindings: vendor-prefixes: add Rongda
From: Jia Wang <wangjia@ultrarisc.com>
To: sashiko-reviews@lists.linux.dev
Cc: Jia Wang via B4 Relay <devnull+wangjia.ultrarisc.com@kernel.org>, 
 krzk+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, 
 conor+dt@kernel.org
In-Reply-To: <20260515012057.E06EDC2BCB3@smtp.kernel.org>
References: <20260515-ultrarisc-pinctrl-v1-1-bf559589ea8a@ultrarisc.com>
 <20260515012057.E06EDC2BCB3@smtp.kernel.org>
Date: Fri, 15 May 2026 09:25:08 +0800
Message-Id: <177880830857.2749636.16904321076118306532.b4-reply@b4>
X-Mailer: b4 0.15-dev
X-Developer-Signature: v=1; a=ed25519-sha256; t=1778808308; l=1621;
 i=wangjia@ultrarisc.com; s=20260515; h=from:subject:message-id;
 bh=SAl/M6+pt5PfCqQKnhF9VqWHdbRYWOx6jQgExwrGjxs=;
 b=/oMq+TRc5ra3Gr4DbJhCulOYfQoQsw88N2+7SHPTLrRBaRG4NHjoa0Tybf4aYyZFw2GGjMe9T
 OCi8/OwRiKdCdu1cc8U3TrPtNLD+eIAQiIM6emclX6c7cM4w5DbBR+2
X-Developer-Key: i=wangjia@ultrarisc.com; a=ed25519;
 pk=wGVm18siRScehKOkOz0WKxgxDy7IezHEszhnN4/TUCY=
X-CM-TRANSID:AQAAfwAnYUIedgZqkmoEAA--.4956S2
X-Coremail-Antispam: 1UD129KBjvJXoW7KFWrWrW8KryDtF4fWF43trb_yoW8WF1rpF
	WfCF15ta4rJrZrW3s7JFyxWa1rWw17uF1FkFW7Xry0k3W3CF1Ik3sIkr1rZa97CryxCFZF
	qF1rZ34Fya4DCw7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUkEb7Iv0xC_Zr1lb4IE77IF4wAFF20E14v26r1j6r4UM7CY07I2
	0VC2zVCF04k26cxKx2IYs7xG6rWj6s0DM7CIcVAFz4kK6r1j6r18M28lY4IEw2IIxxk0rw
	A2F7IY1VAKz4vEj48ve4kI8wA2z4x0Y4vE2Ix0cI8IcVAFwI0_Jr0_JF4l84ACjcxK6xII
	jxv20xvEc7CjxVAFwI0_Jr0_Gr1l84ACjcxK6I8E87Iv67AKxVWUJVW8JwA2z4x0Y4vEx4
	A2jsIEc7CjxVAFwI0_Jr0_Gr1le2I262IYc4CY6c8Ij28IcVAaY2xG8wAqx4xG64xvF2IE
	w4CE5I8CrVC2j2WlYx0E2Ix0cI8IcVAFwI0_Jr0_Jr4lYx0Ex4A2jsIE14v26r1j6r4UMc
	vjeVCFs4IE7xkEbVWUJVW8JwACjcxG0xvY0x0EwIxGrwCY1x0262kKe7AKxVWUAVWUtwCY
	02Avz4vE-syl42xK82IYc2Ij64vIr41l4I8I3I0E4IkC6x0Yz7v_Jr0_Gr1lx2IqxVAqx4
	xG67AKxVWUJVWUGwC20s026x8GjcxK67AKxVWUGVWUWwC2zVAF1VAY17CE14v26r126r1D
	MIIYrxkI7VAKI48JMIIF0xvE2Ix0cI8IcVAFwI0_Jr0_JF4lIxAIcVC0I7IYx2IY6xkF7I
	0E14v26r1j6r4UMIIF0xvE42xK8VAvwI8IcIk0rVWUJVWUCwCI42IY6I8E87Iv67AKxVWU
	JVW8JwCI42IY6I8E87Iv6xkF7I0E14v26r1j6r4UYxBIdaVFxhVjvjDU0xZFpf9x07jwTm
	hUUUUU=
X-CM-SenderInfo: pzdqwylld63zxwud2x1vfou0bp/1tbiAQAHEWoFRsMACwAEsy
X-Rspamd-Queue-Id: 6AC44548623
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[ultrarisc.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[ultrarisc.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[ultrarisc.com:+];
	RCPT_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wangjia@ultrarisc.com,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-297872-lists,devicetree=lfdr.de];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,wangjia.ultrarisc.com,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ultrarisc.com:email,ultrarisc.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,sashiko.dev:url,shenrongda.com:url]
X-Rspamd-Action: no action

On 2026-05-15 01:20 +0000, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [Low] The new vendor prefix '^rongda,.*' is inserted in the wrong alphabetical order in `vendor-prefixes.yaml`.
> --
> 
> commit dca4b6c39a857922a831a430a56bddfea711476c
> Author: Jia Wang <wangjia@ultrarisc.com>
> 
> dt-bindings: vendor-prefixes: add Rongda
> 
> This commit adds Shenzhen Rongda Computer Co., Ltd. to the devicetree vendor
> prefixes list.
> 
> Link: http://www.shenrongda.com/
> 
> > diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> > index 28784d66ae7ba..04e593c66c7c4 100644
> > --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> > +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> > @@ -1407,6 +1407,8 @@ patternProperties:
> >      description: Rockchip Electronics Co., Ltd.
> >    "^rocktech,.*":
> >      description: ROCKTECH DISPLAYS LIMITED
> > +  "^rongda,.*":
> > +    description: Shenzhen Rongda Computer Co., Ltd.
> >    "^rohm,.*":
> >      description: ROHM Semiconductor Co., Ltd
> >    "^ronbo,.*":
> 
> This isn't a bug, but is this entry inserted in the correct alphabetical
> order? Alphabetically, "rohm" and "ronbo" should appear before "rongda".
>

Thanks for pointing this out. I’ll fix the ordering in the next version.
 
> -- 
> Sashiko AI review · https://sashiko.dev/#/patchset/20260515-ultrarisc-pinctrl-v1-0-bf559589ea8a@ultrarisc.com?part=1
> 

Best Regards,
Jia Wang



