Return-Path: <devicetree+bounces-274317-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gDqtBra/sWkwFAAAu9opvQ
	(envelope-from <devicetree+bounces-274317-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 20:17:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 901E52692C4
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 20:17:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 196F1300B462
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 19:13:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E00733B634F;
	Wed, 11 Mar 2026 19:13:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4717C36EA8A
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 19:13:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773256417; cv=none; b=UMKvefvsLQq4a3oDsCw9HnDYF6fXdNEZHZRkorqrSFq5jXirgtb6CEXs69t/GViYQ+DKNU06TAeyn9jWlGd4sbhIayPFUif+1VEuvkWwlU6cflT7dctWkQypO+FL+tObTPb5LzxVJvSfCL9yf6n3EOI0zgXFOJOv+Ss34E7Z5W8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773256417; c=relaxed/simple;
	bh=N0k7Frn4BzbFVSdUpC18gTMHV+kiPfRpRIl39CKHiJU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZX3ykNt7D/wIk8OsItivkFaQAqN1wwf4GjPhAuzq0P6QkUI78wI275e47Lj5D5LsvN1vdo680jRkiUFOpGXMcM8aGBIwyiw4enBBOTpLFSGC436GxaD/8M9huwKb0xjq+ia3Uon+frcVhhTSDiUKbDwLA0mVvgx+W+iByqq0KJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7010722FC
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 12:13:28 -0700 (PDT)
Received: from [192.168.0.1] (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 63D623F694
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 12:13:34 -0700 (PDT)
Date: Wed, 11 Mar 2026 19:11:18 +0000
From: Liviu Dudau <liviu.dudau@arm.com>
To: Cunyuan Liu <cunyuan.liu@cixtech.com>
Cc: maarten.lankhorst@linux.intel.com, mripard@kernel.org,
	tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	neil.armstrong@linaro.org, heiko@sntech.de, marex@nabladev.com,
	dev@kael-k.io, prabhakar.mahadev-lad.rj@bp.renesas.com,
	andre.przywara@arm.com, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	cix-kernel-upstream@cixtech.com
Subject: Re: [PATCH 2/3] dt-bindings: display: arm,komeda: add Arm China
 Linlon D6 compatible
Message-ID: <abG-VqQPuq4vqR0I@e142607>
References: <20260311055506.12023-1-cunyuan.liu@cixtech.com>
 <20260311055506.12023-3-cunyuan.liu@cixtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260311055506.12023-3-cunyuan.liu@cixtech.com>
X-Spamd-Result: default: False [0.64 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[arm.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274317-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,sntech.de,nabladev.com,kael-k.io,bp.renesas.com,arm.com,lists.freedesktop.org,vger.kernel.org,cixtech.com];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[liviu.dudau@arm.com,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,cixtech.com:email,arm.com:email]
X-Rspamd-Queue-Id: 901E52692C4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi,

On Wed, Mar 11, 2026 at 01:55:05PM +0800, Cunyuan Liu wrote:
> Add the Arm China Linlon D6 display controller compatible string.
> 
> Linlon D6 is register-compatible with Mali-D71, so describe it as a
> vendor-specific compatible with a fallback to "arm,mali-d71".
> 
> Signed-off-by: Cunyuan Liu <cunyuan.liu@cixtech.com>

Thanks for the patch!

Reviewed-by: Liviu Dudau <liviu.dudau@arm.com>

Best regards,
Liviu

> ---
>  Documentation/devicetree/bindings/display/arm,komeda.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/arm,komeda.yaml b/Documentation/devicetree/bindings/display/arm,komeda.yaml
> index 3ad3eef89ca8..56fb4103b0dd 100644
> --- a/Documentation/devicetree/bindings/display/arm,komeda.yaml
> +++ b/Documentation/devicetree/bindings/display/arm,komeda.yaml
> @@ -21,6 +21,9 @@ properties:
>        - items:
>            - const: arm,mali-d32
>            - const: arm,mali-d71
> +      - items:
> +          - const: armchina,linlon-d6
> +          - const: arm,mali-d71
>        - const: arm,mali-d71
>  
>    reg:
> -- 
> 2.53.0
> 

-- 
====================
| I would like to |
| fix the world,  |
| but they're not |
| giving me the   |
 \ source code!  /
  ---------------
    ¯\_(ツ)_/¯

