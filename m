Return-Path: <devicetree+bounces-267576-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GLc2GDqVnGlOJgQAu9opvQ
	(envelope-from <devicetree+bounces-267576-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 18:58:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 000B317B2FF
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 18:58:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 86E97312E0C2
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 17:55:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C988933A032;
	Mon, 23 Feb 2026 17:55:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dH3ig7Dc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f50.google.com (mail-dl1-f50.google.com [74.125.82.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EEEE339B2D
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 17:55:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771869314; cv=none; b=c9mF//AbRvPOJBXnvCZ0CBuR5mni/MRMfITb6HrLcqXJ8tXlZ4blazrBbh1kbs71D+a2151LJNpD+jg6P8AZYmL2/6ctwhCYxFnMUhHeigS0hpE1q8aQ5fHlojWd8HVUQKKPjCUuzqFfmWPYRQ22rSG1QZnnTobv3NSXhmUFjN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771869314; c=relaxed/simple;
	bh=JF1KZ8us1B4UC6UAm56h5UA3Lh/N4+4s3jylcnX4xUQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=D5W0jdwyfFXRhSJByinwNXvh7KpnAk4q19b37MTQCCGB0QG1G0i6ATrJnH/UX1iOjP8k5lBDRDb3g0pwH5xlAa5D/DP2iierz1Je4Y18RGcAq8GXSZY7/BJHnX6LgGcfB4KsYZ6MtwrwJf+LF33XeBFHkc2lLZARC2+RMgFGtgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dH3ig7Dc; arc=none smtp.client-ip=74.125.82.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dl1-f50.google.com with SMTP id a92af1059eb24-1271195d2a7so105396c88.0
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 09:55:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771869312; x=1772474112; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8S3D2amG83bMjq3rYrixdtz5QNwrXVFuIOF99KB48r8=;
        b=dH3ig7DcgoD2/IW68Ckw0bdharNJTHMFc8etCmoR7iPRba+y5eJ54Y/r9E7U/Iuhod
         Ldi7g3QsXsNHLG/DmGqqjxwdZ9JL40yDti4z6Nc2tM7xmz8HnDo6RWArOd3yX0fz5Hsd
         xjDXOs8dtiFrX/7NHm3illACfYNA9365Qet69FJ5E8x8HVGAevDgBcbxjwiG6JJX4GQG
         4q9ElXskCyiGdnCjF7jYImsZyd3+vA8sSie3IHYr6H/nv5Y76UwBX0a3MPhNq+4AHVa9
         UutxyWd5vr9DxURjxnQDQsygsoC8EgZzOM1gJb5Q6yFuWuPmSh0yJT4oiF2hOGJkAQDZ
         X9kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771869312; x=1772474112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8S3D2amG83bMjq3rYrixdtz5QNwrXVFuIOF99KB48r8=;
        b=knM604CKja+cgMtTjYfaodMd8EAIPOyiu982bs/lBslqAKWu9x8bQIpsnFw5wkxI7V
         40OMqlWWGOaCVzWibEAvVwJQXSIKCZruHf+dsMSvjX05lZcgIxMYqJ3prQ4QjIaHlrZJ
         mlZNLLKk3TJL+kCz8ITfBFGPZSysh8Hz7T2z8A0rMGu2M6BXLZH67rUNyM1Tc3v1iJep
         ZfjdVYE5vunK8tqq/0IqJRVYNifqmn8AAk1Jh8iUrP3RlAnz8VB1eYu4zaL6g5i6FdcU
         HRMWqS3whUD1N85UsoFORoePTuOPUdCA6BUmVUbjE1pDRl7Sq2dsY6Tnk3cP0mZtFvNQ
         rU3w==
X-Forwarded-Encrypted: i=1; AJvYcCWOnCz9V2yD6ueCFFwlVwf4zLk4nKX2xJMoAPQdxLkp+eU2/28YGcOKkEYYkwQB20TY418fyw//FUnv@vger.kernel.org
X-Gm-Message-State: AOJu0Yxkm46+iqqE9fH3z8mTw3/w/JPvsZyf9cz03m9N4rMbaYxv3twl
	f8VAKi975WeG6uyvR2mdEzQtDKbJXnL+4dKrG6eP9/f8QTZS3Bg+5tiz
X-Gm-Gg: AZuq6aL7uZvv6At2pLmojjqidG2quR+3smH0mjc56H6NLFQX5kZPhjDHZPLtB2zbtbw
	o/P/5uqXWUqipxf75Zz9aQ6dJSSTwKK7v1jQ1emNzbTwxT6I2d9eWT7VOH6JElTPfmFCljl3Zgl
	7F1m4ZUFxN27A5VzR0uDrE67P1pwEMB0/iFPlsEtaYONeKXx9bEbmvEIAtgFdhXu6+C3aWHt5sO
	iD5ojR0U8GM98I3cye4i40hT6JXsMSebkQLQow29AU9fmiIiXouuKbtFz0RI5CHVZtqr3p320Va
	Bu7YcLjULl6SfSbCKEj9ZTtKIDRITfBCSjt/aczHitpc3k8NScuZ+fKGj+nW1SLMKCxNiLAXruE
	f8ygoHGh2kypFgUoK7SQm7Q16Jfog+vmV1IXh66iZMfIy2QBxH3gJN+YjO7bSifv+BRe5VuqJJK
	ADYMs42LuCIJQKHPJv5PRT0PQrlyD3BLWWIqZmpJRYNpoY+1uzz9kT3BdDy5Ggei3X5rHFvpBO5
	xQ=
X-Received: by 2002:a05:7022:2214:b0:11b:9386:a3bf with SMTP id a92af1059eb24-1276ad61a70mr4534016c88.42.1771869312175;
        Mon, 23 Feb 2026 09:55:12 -0800 (PST)
Received: from google.com ([2a00:79e0:2ebe:8:1b48:5d6e:ab6e:5287])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1276af7ad65sm7334624c88.11.2026.02.23.09.55.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 09:55:11 -0800 (PST)
Date: Mon, 23 Feb 2026 09:55:08 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Luca Leonardo Scorcia <l.scorcia@gmail.com>
Cc: linux-mediatek@lists.infradead.org, Val Packett <val@packett.cool>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Sen Chu <sen.chu@mediatek.com>, 
	Sean Wang <sean.wang@mediatek.com>, Macpaul Lin <macpaul.lin@mediatek.com>, 
	Lee Jones <lee@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Liam Girdwood <lgirdwood@gmail.com>, 
	Mark Brown <broonie@kernel.org>, Eddie Huang <eddie.huang@mediatek.com>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, Gary Bisson <bisson.gary@gmail.com>, 
	Julien Massot <julien.massot@collabora.com>, Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>, 
	Fabien Parent <parent.f@gmail.com>, Chen Zhong <chen.zhong@mediatek.com>, 
	linux-input@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org
Subject: Re: [PATCH 7/9] input: keyboard: mtk-pmic-keys: add MT6392 support
Message-ID: <aZyUXip4zgeDUdVQ@google.com>
References: <cover.1771865014.git.l.scorcia@gmail.com>
 <2c96591313084d240ac94b9d42d91d984fa9bce7.1771865015.git.l.scorcia@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2c96591313084d240ac94b9d42d91d984fa9bce7.1771865015.git.l.scorcia@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267576-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[lists.infradead.org,packett.cool,kernel.org,mediatek.com,gmail.com,collabora.com,bootlin.com,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[27];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitrytorokhov@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 000B317B2FF
X-Rspamd-Action: no action

On Mon, Feb 23, 2026 at 05:12:46PM +0000, Luca Leonardo Scorcia wrote:
> From: Val Packett <val@packett.cool>
> 
> Add support for the MT6392 PMIC to the keys driver.
> 
> Signed-off-by: Val Packett <val@packett.cool>
> Signed-off-by: Luca Leonardo Scorcia <l.scorcia@gmail.com>

Acked-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>

Please feel free to merge with the rest of the series.

Thanks.

-- 
Dmitry

