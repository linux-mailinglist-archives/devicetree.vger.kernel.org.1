Return-Path: <devicetree+bounces-263549-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MOe2HWPOhmkRRAQAu9opvQ
	(envelope-from <devicetree+bounces-263549-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 06:32:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C947610507E
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 06:32:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 59407300DDCD
	for <lists+devicetree@lfdr.de>; Sat,  7 Feb 2026 05:32:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DB442701C4;
	Sat,  7 Feb 2026 05:32:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED82150276
	for <devicetree@vger.kernel.org>; Sat,  7 Feb 2026 05:32:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770442336; cv=none; b=miS/vNWp1pN0nymyvNELfqeu/V/CpzurXrlWCfSwFJSyAkFd1mO52Al/1BbaVigBXOUIegxWYF7LPDy0sDyDh33t9OLQuLLvVO4DJgFZAC/NjzXrQtc+6FWiJWilb++HnpUIcg04Z7QmrSNtvPlJFaaWPv/xC/W3B8VXQ+sUCdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770442336; c=relaxed/simple;
	bh=krDiaFFyS6239XZlJf6eTMcTjCZxo7YCdKbQY2cFgFs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EwonCDBzBRDph3PUBgansE6Hvy4vTpfIGrH6MKru4K3Eg+9+j+h3yEWUDHmYgG9kaAosoXm609XwWE3iwzW6DLPF6+QeVPkAihm5iMR42Pr3IrWVlBEAWFIZzlGQwQ58s6vCFqBy7LD1uNx1cK/h+FopMD9bSpNyK9ChWHCFWIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.210.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-7d18d0e6d71so938872a34.1
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 21:32:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770442335; x=1771047135;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=krDiaFFyS6239XZlJf6eTMcTjCZxo7YCdKbQY2cFgFs=;
        b=Re06oNkCYGmeYEgcU0y34QTNKYaPFktpw96GYj1Wr8FF1RWrpYlFbIhxjOEklUq3/r
         4UzD3semnBXMjtEuB4QuVwApqCYFyCbVvnsTU5XKNudkA7sEhiDOAi3MGvjIDs0JMHKP
         TX8OQx2tFquWFIW7utKDTggP3S8I7jziOReXwxevkK6kZXAPVt/acnfMfhFjnxx4SaCs
         Z29ZCTW9RE8XxMNLFHncEBQzhTDwJkaPXDUTaDFT4kx31JktV3ZANV0LluyVZixinKyo
         /IlWpivTLu+TBWcmN4/UkzAz+FND2YFO73FrAeTe7V1ClH3OCUdyOEWzZtN6EPeLU+Xq
         77Mg==
X-Forwarded-Encrypted: i=1; AJvYcCXABKl3YipzqJylUv2ixqaa6dlJaRijMdbXeFfbNZQAArkoDFzO9Cv3iQi3kSgGLtg0mevDe5fXlpK/@vger.kernel.org
X-Gm-Message-State: AOJu0YwlBZLTbph6GcYuRjdmAjaMwjZG5cm/9YBCMSNk+UbFwcMrGYfH
	KewNI7MPVlXU9oTv6/9lTj+ECuknFKeOsMkum7JS1sJYyQWLHcnON+e+xCOjUw==
X-Gm-Gg: AZuq6aK6Pgbojar2g4ezrRnVrt3tb7mJKjXsxRKNJAjEgcInaeCIlWhvi5ohRNgYPTH
	1eRFf5qzkmPhmvraQ06nPzzacUqpbf32SRM/0z79JOwg+SDa2Cnp0MyZfLmLPhjVlP+0a2EvTCQ
	5PnhCYJU8X7nOSU0uWQTYCfgpT1uQRcsCHgVf7927nqGXmEPhcSDr3ciNLdgs7sOlqY2WSp0nbq
	qMSzg2R6GShrpUbw3P18z3rHWgZksK2/WoY5pY68GVIpMuVsYmkRNxrEa/JAMQs/Xlz+wF7KVEV
	g/ur5O4/sIot0+ilSdBjRi74Abo9+xdvLrE1V5vhC9d657Ve0Qipf6O85Zigk5VVmZ9nbZAE/MQ
	F7fLwTjbg0+DdZAt65T2v9jNb2xagH8PGI4gnuxs76DFTCPUyTEd4PNLh4VqDjiBTpqY7SN5epN
	u3qV97V/7MDFCUgue5pi5cvgR429GjNv0XFkztfaWWgg==
X-Received: by 2002:a05:6830:6214:b0:7cf:dbb4:3210 with SMTP id 46e09a7af769-7d464422696mr2999186a34.15.1770442334761;
        Fri, 06 Feb 2026 21:32:14 -0800 (PST)
Received: from mail-oa1-f43.google.com (mail-oa1-f43.google.com. [209.85.160.43])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d464785f68sm2927292a34.16.2026.02.06.21.32.14
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Feb 2026 21:32:14 -0800 (PST)
Received: by mail-oa1-f43.google.com with SMTP id 586e51a60fabf-4096aab5521so1182396fac.3
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 21:32:14 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXkcV5OhEtbC9nFkR21dwkWFLFKs+JCEtn1C90MfT1JOE6fvPkktked/IdGOEqe5Ix+qsT5qN4WieDc@vger.kernel.org
X-Received: by 2002:a05:690e:d8c:b0:64a:d9f2:ad6c with SMTP id
 956f58d0204a3-64ad9f2b2ffmr102741d50.35.1770441868920; Fri, 06 Feb 2026
 21:24:28 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260128-rubikpi-next-20260116-v2-0-ba51ce8d2bd2@thundersoft.com>
 <20260128-rubikpi-next-20260116-v2-3-ba51ce8d2bd2@thundersoft.com>
 <20260205-calm-aboriginal-mastiff-b07eb3@quoll> <CAEQ9gEm-A8mDS=6V3h=2gHOhtM39q+bR79sSFhDTvbEJbDJRWA@mail.gmail.com>
 <7c6ebf5f-ed13-46f3-88c8-a33205388d74@kernel.org>
In-Reply-To: <7c6ebf5f-ed13-46f3-88c8-a33205388d74@kernel.org>
From: Roger Shimizu <rosh@debian.org>
Date: Fri, 6 Feb 2026 21:24:17 -0800
X-Gmail-Original-Message-ID: <CAEQ9gEm=6kLFz5bdY9wtVd2ZLtmPape-GUrY_dJT8OYhzBB-nw@mail.gmail.com>
X-Gm-Features: AZwV_Qgf0EMQyeIKx49_m9UW5WfF6Aam9IpQCMPUe92xYzVqHTDk6dw3j6f9MCM
Message-ID: <CAEQ9gEm=6kLFz5bdY9wtVd2ZLtmPape-GUrY_dJT8OYhzBB-nw@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: qcs6490-rubikpi3: Use lt9611 DSI
 Port B
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Hongyang Zhao <hongyang.zhao@thundersoft.com>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[thundersoft.com,intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,ffwll.ch,linux.intel.com,suse.de,lists.freedesktop.org,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-263549-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[debian.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rosh@debian.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.948];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.1:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,thundersoft.com:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: C947610507E
X-Rspamd-Action: no action

On Thu, Feb 5, 2026 at 11:08=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 05/02/2026 20:36, Roger Shimizu wrote:
> > On Thu, Feb 5, 2026 at 5:09=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel=
.org> wrote:
> >>
> >> On Wed, Jan 28, 2026 at 07:15:47PM +0800, Hongyang Zhao wrote:
> >>> The LT9611 HDMI bridge on RubikPi3 has DSI physically connected to
> >>> Port B. Update the devicetree to use port@1 which corresponds to
> >>> Port B input on the LT9611.
> >>>
> >>> Signed-off-by: Hongyang Zhao <hongyang.zhao@thundersoft.com>
> >>> Reviewed-by: Roger Shimizu <rosh@debian.org>
> >>
> >> Where did this happen?
> >>
> >> https://lore.kernel.org/all/?q=3Df%3Arosh%40debian.org
> >>
> >> And again, v1 was completely different so how pre-v1-internal-review
> >> could be applied to this v2?
> >>
> >> Honestly, initial guidance is useful but continuous development behind
> >> the closed doors is not.
> >
> > FYI. v2 was updated per review feedback, which is public:
> > https://lore.kernel.org/all/7d9041a3-9d2b-469a-9fa7-89d53bbd2a1f@linaro=
.org/
>
> What? I asked about the tag. Do you understand how kernel review process
> works?

Yes, v2 was reviewed in private.
I'll inform Hongyang to remove the tag when he sends the next series.

-Roger

