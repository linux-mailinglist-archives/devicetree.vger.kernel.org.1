Return-Path: <devicetree+bounces-271534-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SLx3M6BwqWnH7AAAu9opvQ
	(envelope-from <devicetree+bounces-271534-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 13:01:36 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id CEF0621116E
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 13:01:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C8C8A305D935
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 11:57:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EFDA39A7F6;
	Thu,  5 Mar 2026 11:57:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hFd0iBHi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAA673988F5
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 11:57:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.167.52
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772711836; cv=pass; b=TDb0aSokYMdZP7skHme+LfjxAlqrt9q+qCnSu6SNzlseo79AoOdW1yO3/l4rt4bsSb8BUOGpplEYGEWdr8YVN+mK7IsHg9kaUEUa++ryfRRZ0VkFmk+7wndtyW4Q3YqRfO8Ou3eOcRxsLpWaOGccvyLaYleh4T9d8LRSv1w14n0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772711836; c=relaxed/simple;
	bh=1UGyEXtFp2NCUiehBRnGs11aEgs//ewe9LPC+9UIH6c=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Yh0F8cymD24AVUWE1N0jn7IcPrFqoiW2HFcI0F2EU9L7gAyFx96OuT27WsySJkykGjmy6fa7T+/m6L93LSmhIpr7ZLJn30nseUJiETFqLFG1ZJu92HAWx6Y9Eb/96coTlhOWU5Ppe7SVz8bp31hAX6rmYlyRVjudkVaO8Yj8Cyo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hFd0iBHi; arc=pass smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-59e4989dacdso2483047e87.1
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 03:57:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772711833; cv=none;
        d=google.com; s=arc-20240605;
        b=Z8lYM7073ZXjJn2zDLtcF2zbpwkKHIEqiMRU94/mqfW5xM9WmiaaaZt9B43TBbd+zr
         qtg3A+yeGgB5BnxEXH8dMLrUhJSGxPFYd5MT6Xe4wYDklUWzrblyOYxh9IgHpsrwPT+0
         Zad5vVvtHiXugcQ/bcpszIGQbjEQmfhyKVzP31Sl8K27QCMuCsNWjr3PXNq7/ihBSy0U
         YoxOpGjPrhdeMGRA+9g84YtBy+0fsTzoqGrnYLKhmTXK+0erMa8cH70ihC3u84ZUzzVp
         a/NEbf5IvV3ZXVSCXSGbZkIMOvq5Y56hZOHkU1JHL9g6iy2sCDuDzcpzkkzHHhr6fzIE
         Y0tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ALDYRPJkWtMzKaRnbmNmHj2U+4DhNXkwv052yxudN8M=;
        fh=pAWbc4AbpHejCaMil0yhenMktfopsC5Hhy+Ralo9D24=;
        b=GWvriPWPGhyY3e5Ksio2PfrtC6yYz7DG8Yh06bXnta1cY+QZYUYRyxiUrvfpTEvQQO
         NQ98NGnbPOaoerm/PiR1/J4oIilLq68o5nZjmPcSMoH9A+IKlsDRexfe0OFBdhdMWCef
         +eHWIhZGvSZpcIIyyUseCbzmI0c++Ys4CnMu0PT2HwATtj4rQYD/80YsQusyzV2ivw3n
         XAeALEwGOt2qw5iK2DY8CPiXYQ1HVt88RxutodOA59rjFUmfwyg4MkG2AOruXSIPK6y9
         0ZcmoToHWd8206YIAK75wQ9y4hC4vW4Gmf2J+uCT689F2DkjDwI1xZ63/uh4PPw8aq3G
         8wxg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772711833; x=1773316633; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ALDYRPJkWtMzKaRnbmNmHj2U+4DhNXkwv052yxudN8M=;
        b=hFd0iBHii57IkOq/r5sRlys6bKBC3vr3XQ1L/+YsMiEuWDncJut2WIJOsm/LDxrTqk
         vECh8E/sdxS+DRuYkeJOnh96zQFl2G/gIu6jNt5vG6VpYyBDWfS04hAWjUzgXG7oMm7r
         exwA1MPXEB8oknqM2zHazCSgVjf/+LUjUeCCNKlZoByQMwWO3YkvmbRv+o9GS07XKKdx
         FYULTgyVGE/iJ6WW+t1TcqG5QxIsG7RHrZeqOyPTP+TW6z7n2nX23GL7R8A8L4RexZx0
         AKRKiMP9Pw62cqNKRSqUTkzrpSOTb/t4jq0zIX+13iyrCDEq+6otVBBRT5LzCFgVCITv
         bvWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772711833; x=1773316633;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ALDYRPJkWtMzKaRnbmNmHj2U+4DhNXkwv052yxudN8M=;
        b=OwNHo7ScC03U2q7IjM6P2ha08vBqKe+TvhrSpX/Cpk8RFw04GHVrOrvkoyDC40No1i
         ygtorMS4i64uTg+YqtZu6DCFS/nbnGWEcviptb9kSmVqlm79tftLHUskMY7EdHMLSNha
         Q830R7254OE0CyLP6Ie34/7I1+rp7R4vCvhtfpV6dxUKp29LEYu5V7shiGjuzD2+B5nJ
         fd6qb9/JPFtjd880Fp+0Eaw3iDDKj3/J6J2WdRqILu6rirnnlFQ3Ojar4C/sF20IwCQm
         WkUOLHWa0ZYQ608nIMoRfKJ0vfymcs347tqoxkZ68XX18oZLYC4DzSdjOeaOQ7QhqG5n
         O+Iw==
X-Forwarded-Encrypted: i=1; AJvYcCVJg83iojSOSa7U99CF2Iv9+KPrk6AYGVDKI9D05DwgAhwcep8v+0BO4b2TtV67BoPzDlJEbWkbDUIT@vger.kernel.org
X-Gm-Message-State: AOJu0YzEZfWe4FOFEjOEb2gg/NK9YIszBStebHYSfAtzqvOXclh3WQ5l
	UdcTC3kWz0QE3Ihv1jBTyn08Iwh8AYZbs76lcVCy+hdemIVAPQavIm+sc5Ab1t8bDN4EGyGyyzK
	ihR0l7LN+MPDYF5y2Qnfdk1a735lRfF4cvBfTnK9OZQ==
X-Gm-Gg: ATEYQzwjO0ndSLWzYlvkg45xmNuOoet2PQnOE+sf8CwVKlggfk6NCYPUA9VUYeCnSI4
	H6lzxE77MvqyAlb/VC79T/gwnOAVFe84r40LSXyOLdf7IooUemf1XbLun7EznO/IP8zjhjTS8It
	LRgvtJwm/ao2v8YPh0aj+acvSMda8618WnezEwPdc+BtrLF67klZJ5cLRq32GLSb2ChxBjYLgmJ
	r3U+Zrk28vO2ve0wuBeagk/qFz65zBh0gMC4yelSlek/UWa0onH7MEU3T3XIQSk71BUlXp4OQ3G
	hh/Cw0ml
X-Received: by 2002:a05:6512:1084:b0:5a0:fb38:4a01 with SMTP id
 2adb3069b0e04-5a12c2829d4mr823483e87.16.1772711832789; Thu, 05 Mar 2026
 03:57:12 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260226092614.435-1-hehuan1@eswincomputing.com>
In-Reply-To: <20260226092614.435-1-hehuan1@eswincomputing.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 5 Mar 2026 12:56:37 +0100
X-Gm-Features: AaiRm53dRGsxW4aISbyBsrKAujqBmnb3pz0qXGRf0FeJNJ07qSS8eTpMNu2SXOU
Message-ID: <CAPDyKFrSttCUg5cG5b0LrETAu3CC15bHpC8_hjLmzZoFJ8YGKQ@mail.gmail.com>
Subject: Re: [PATCH v4] dt-bindings: mmc: dwcmshc-sdhci: Fix resets array validation
To: hehuan1@eswincomputing.com
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	jszhang@kernel.org, linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, ningyu@eswincomputing.com, 
	linmin@eswincomputing.com, pinkesh.vaghela@einfochips.com, 
	xuxiang@eswincomputing.com, Pritesh Patel <pritesh.patel@einfochips.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Queue-Id: CEF0621116E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271534-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ulf.hansson@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:dkim,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,mail.gmail.com:mid,einfochips.com:email,eswincomputing.com:email]
X-Rspamd-Action: no action

On Thu, 26 Feb 2026 at 10:26, <hehuan1@eswincomputing.com> wrote:
>
> From: Huan He <hehuan1@eswincomputing.com>
>
> The binding defines tuple-style reset-names items for some
> compatibles, which implicitly enforces a fixed array length
> via JSON Schema.
>
> Defining global maxItems for resets and reset-names causes these
> constraints to be intersected via allOf, resulting in an effective
> minItems equal to the global maxItems. This leads to dtbs_check
> failures reporting reset arrays as too short, even when the DTS
> provides the correct number of entries.
>
> Fixes: 30009a21f257 ("dt-bindings: mmc: sdhci-of-dwcmshc: Add Eswin EIC7700")
> Co-developed-by: Pritesh Patel <pritesh.patel@einfochips.com>
> Signed-off-by: Pritesh Patel <pritesh.patel@einfochips.com>
> Signed-off-by: Huan He <hehuan1@eswincomputing.com>

Applied for next, thanks!

Kind regards
Uffe


>
> ---
> Changes in v4:
>   - Add Co-developed-by tag for Pritesh Patel
>
> Changes in v3:
>   - Add minItems: 5 in 'else' branch for non-Eswin devices
>
> Changes in v2:
>   - Keep the global maxItems constraints and add minItems: 4 for both
>     resets and reset-names properties
>   - Update commit message
>
> - Link to v1: https://lore.kernel.org/all/20260211094736.88-1-hehuan1@eswincomputing.com/
> ---
>  Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> index 7e7c55dc2440..5cebe5eb1efb 100644
> --- a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> +++ b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
> @@ -50,9 +50,11 @@ properties:
>      maxItems: 1
>
>    resets:
> +    minItems: 4
>      maxItems: 5
>
>    reset-names:
> +    minItems: 4
>      maxItems: 5
>
>    rockchip,txclk-tapnum:
> @@ -146,6 +148,7 @@ allOf:
>      else:
>        properties:
>          resets:
> +          minItems: 5
>            maxItems: 5
>          reset-names:
>            items:
> --
> 2.25.1
>

