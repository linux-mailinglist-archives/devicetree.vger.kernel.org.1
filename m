Return-Path: <devicetree+bounces-278644-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id z/0uKFX+vmnmoAMAu9opvQ
	(envelope-from <devicetree+bounces-278644-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 21 Mar 2026 21:23:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 434072E7289
	for <lists+devicetree@lfdr.de>; Sat, 21 Mar 2026 21:23:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7FE20300831C
	for <lists+devicetree@lfdr.de>; Sat, 21 Mar 2026 20:23:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1272B34846C;
	Sat, 21 Mar 2026 20:23:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gczEInCf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E37392BEFFE;
	Sat, 21 Mar 2026 20:23:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774124625; cv=none; b=T2X1jtmB6+kstUcalO5dHEZqruDMkUTun05kieNKoEfs7G72my1wFIhLOjW9x3afcUzBi88NDnRL19jnapiElrMSOr+CxIGIwuGfbkEWwRxPPaBjRaH1YC/X+krTRNBS7KEMnA5ayD2mQgh0JGeo9Dgbn3D7sksBkVOmylZNy+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774124625; c=relaxed/simple;
	bh=WgBd29EmtamWxuNTMjO9kusdS4C4KjchmKnjrPoseLo=;
	h=MIME-Version:Content-Type:Subject:From:To:Cc:In-Reply-To:
	 References:Date:Message-Id; b=jq9f6BDLxREbc6Bst1DIxh4VkpSr/YDjbBzaymNLfrY6MPEfSt06/0vsAmdTBXTS4TBC0Gkdb0Oa7AMtft4nVoEJx6FCdmqQVEu4NXqp+wRW9z6uPncUC1MJ1Yuc92iHp5r6xaPsT/XdYmlD/d+aeNS2ecrC6lYwojXE4prGQvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gczEInCf; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D7DD3C2BC87;
	Sat, 21 Mar 2026 20:23:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774124624;
	bh=WgBd29EmtamWxuNTMjO9kusdS4C4KjchmKnjrPoseLo=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date:From;
	b=gczEInCfXPwmMUyeOG8F06gHbhygdMskfkMo41dPlQFoegruQpkWHHhVJIMCNOsrX
	 ppfodQoxm7N9Mi5uBzchHprwnstJZke2/QWLxXr3yYwN4rl5JqpZ5MnBFcLV5FIPpc
	 gbySISO3nZw7EmLzm2w12/qf00vXUzsMCmfrrlWb83gpMAriZFq/nxQD409KPxwMQw
	 /xbFRHD0UqirPC/8sSo8FmyvVXseoo6raUVX9IpBSxq2RaadqFOLhS3xkXPA+TCIQz
	 P+UgqumoLBs+i7v6f40BEvs9ahoS9R3ljSWYHiPZloIGMh1XytBkzCP8M8Lo8eb8BL
	 5UHFAuVJJfujg==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Subject: Re: [PATCH v2 2/3] dt-bindings: display: arm,komeda: add Arm China
 Linlon D6 compatible
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Cunyuan Liu <cunyuan.liu@cixtech.com>
Cc: liviu.dudau@arm.com, maarten.lankhorst@linux.intel.com, 
 mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, 
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
 neil.armstrong@linaro.org, heiko@sntech.de, marex@nabladev.com, 
 dev@kael-k.io, prabhakar.mahadev-lad.rj@bp.renesas.com, 
 andre.przywara@arm.com, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 cix-kernel-upstream@cixtech.com
In-Reply-To: <20260313033119.33686-3-cunyuan.liu@cixtech.com>
References: <20260313033119.33686-1-cunyuan.liu@cixtech.com>
 <20260313033119.33686-3-cunyuan.liu@cixtech.com>
Date: Sat, 21 Mar 2026 21:23:37 +0100
Message-Id: <177412461794.18368.12679919205884501337.b4-reply@b4>
X-Mailer: b4 0.15.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=595; i=krzk@kernel.org;
 h=from:subject:message-id; bh=WgBd29EmtamWxuNTMjO9kusdS4C4KjchmKnjrPoseLo=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpvv5LrpZeM6/FosQBePmyo/2PNwsL4E5j4hL9O
 +z1+txl5u6JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCab7+SwAKCRDBN2bmhouD
 15I9D/4yD0TSh7IPoMAQCObRcmwfy2fgdPjf6tz8jNWAGCgpeAIKEvShKyHzEn3+250BJzZJ20j
 PL6i+TAb3zz/ZHF2mI3EOlmqnTGDE2/htCxyGlmuwo6G9z/XCRR7Bjm27N2briBjK5dPUpr0p0i
 96g6T4ZoXoWXgb2mlU+kRzLo5vLa2Vu64sn+SxTnYzARIjDrdRmxpmbgwA783Fd7PKyiKt/lksI
 uOcTIuWBcdqi9WbgvwjvE/dnLopUV1vtVutgNn1rb76xGBp/xnjTkCsyXD/jHzaao7Ss2/VWPpR
 3qNSdAh7ZybRBcYyE/B/NHzZ0DXwp9phMHCYZm7XJJMYUsrRWeawtncW/gb0ZU4/sHlbqVFEErP
 PKzQAzZE2Wx5U++zJqCR4sLRst2VLt10w6sVHgpPI7um8ZAuWcNT+99gxdZShYCU3fFPn82efqA
 xMzq+3Zf4P4+PhBrZSj7jeOEDBoKn1LbU3/aeBgj9muip8vrANsRpVgbd1pZhHfZDQmT9/2I+BA
 x4B2ixDws9oL/9gOW0Kf2Z0307GCQTxfQl75mzPFYhuZ5HjlS41Si5ZUQwdpdYeh78aELJN5Crr
 13TdxWzP/xk88RUzl3afnX6gREbdOpu13cARVGIlMth9LR7Cd5jKtxLYtMCzIBT14bGEoZyVjbZ
 XlW+7JH753hvWQA==
X-Developer-Key: i=krzk@kernel.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-278644-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[arm.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,sntech.de,nabladev.com,kael-k.io,bp.renesas.com,lists.freedesktop.org,vger.kernel.org,cixtech.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 434072E7289
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 2026-03-13 11:31 +0800, Cunyuan Liu wrote:
> Add the Arm China Linlon D6 display controller compatible string.
> 
> Linlon D6 is register-compatible with Mali-D71, so describe it as a
> vendor-specific compatible with a fallback to "arm,mali-d71".
> 
> Reviewed-by: Liviu Dudau <liviu.dudau@arm.com>
> Signed-off-by: Cunyuan Liu <cunyuan.liu@cixtech.com>
> ---
>  Documentation/devicetree/bindings/display/arm,komeda.yaml | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof



