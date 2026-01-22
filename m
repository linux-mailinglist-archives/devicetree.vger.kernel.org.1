Return-Path: <devicetree+bounces-258165-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EKvYAmZ6cWkvHwAAu9opvQ
	(envelope-from <devicetree+bounces-258165-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 02:16:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id A92B8603B6
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 02:16:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id AD66E3C88F8
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 01:16:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D1C7346FAA;
	Thu, 22 Jan 2026 01:16:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="zym84CyM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93C7F34C130
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 01:16:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769044573; cv=none; b=H9peLnh4/TidxExE9WdmtUeGQHxd7+XCVUwLownoO3I0O9o2VbDGPSAVpl1zG6E50I9x+pwiVBYmmRWbWA294g1oT/hy4VRmX6Y4N4t5XW+kGnTr4YBYzks3phAA50n6RU6bPOhNoovh5LVHDkmRyDjzVOoXrk0qDhvTionvvSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769044573; c=relaxed/simple;
	bh=jqqaW2BxxsmEU0aFqYQDCxb3LGBQ3x2DI42L84wdJmU=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=DpbU/OqP5niN15NSixOEF4eXQSVIpd7StYCaqMDkqXtrL0vhrF5wz4cxbpsyR4KZ5VbKzBPK4NMMUKVpXN6yzYnVmAig14IGY9u4fPFgFTh40tkBjJpAshM1tHkbQhUZb4lvwH+7sJpQP+wu1oE9k++hHy0+USvYfzW6neblf4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=zym84CyM; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-81c72659e6bso457240b3a.0
        for <devicetree@vger.kernel.org>; Wed, 21 Jan 2026 17:16:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1769044564; x=1769649364; darn=vger.kernel.org;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=lGeSjZ9YQbprMhk0/2IWvvFkHe84g+iu/Za5NoKtD6w=;
        b=zym84CyMNg7Hs8dMw9BMItXV/qGhaIHmkwTxxf59rVH3tNarStBAj788ED1922nbxt
         XZ0TUXp1xbgiLXay+gGPK+vWnk5GjJNOGBit7yEpSctF5wN8FTqMmJ3Oa0FWmtGetiIT
         KCjEPe0swzwaUGyLz5fMzKtp5Q/Wqfrqj0usItPvXbGhU1KOZWXnf67VeA3eztDX299M
         p2xZfqD5JskebXb1ZWc8kyAwkrn5MEEcHweZl/b1F/DughLcWtoUmAg9mAi4nwH1TdYG
         +Wl1QWl1ldkBNrrz/R9vZeIYB+DnDp130pCyasL6PPabHmD0RoIC7ukMvRMH7rKhF+92
         aeLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769044564; x=1769649364;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lGeSjZ9YQbprMhk0/2IWvvFkHe84g+iu/Za5NoKtD6w=;
        b=sRtmwypG3tcL8cvTFJNafLN4cd91oTiUyqVVDgGhfp2012FifpBV9qxSHst7VzUBkh
         bF8zqKHmGy3H4i5XhQpXjO10pEos2j8urb91avMoiVvmcFJRDdcDNdPTKRVRIUuxRfLZ
         82RxtpZBEF6z5BGVVnvrKTEVTrVvg56oQyoPaRje/3HLc3prY40iTkVIGPxaIXJgcfS9
         CnCxZ4VYtaY7BwIS08FLQ2igv+isQL38Ekb/delFdjZqd2Ry4Gmwq/3pux5qa1IenlOP
         cTyWQeWPjeLr3xsL1hw3EyYKoTrSy8NAUVGyRBJRiGdy0aIJPVyyGrIRYHl/ehJ8cUtp
         X3ww==
X-Forwarded-Encrypted: i=1; AJvYcCW2d7cBdUAn3Ht2LyeF366h3fP1LJK4ps6sGG9ysKsuPdMGhwwcz6ajN7dOKWAXW0eJYF51OpqhpE5d@vger.kernel.org
X-Gm-Message-State: AOJu0Ywxux1hCOxaKumKX5q0NybhSv2k6cXB2ZNTLN2phMMucBGN9iQ4
	y8jYqTyAEpDEgTXnbB6SFJD72shNtOU5YtceytwmV2NRhD+xdDQRmu0cZrcqrfnijiY=
X-Gm-Gg: AZuq6aIjh1FaflJ9/4WbppP2ahGMnjgm/9nQ5xJ229iYSmU7yYs1I/lpqIrIoUiov2y
	yvPJpgJDHw11O4pdufuhbnMhLbVwjCqX/JBhb0KB3ol57pxUrSUjoUVox3xE/g2MMza3G9nWef+
	FbojJJeB0NR0GlD+OnPkk68Wmg0O4gtKRrnJEIBxmcEOBZZv9Rvrjr0NlI0VA+trxxokGvJTZFv
	VeD+TigiQKEMjJabb7iy5tgYAA9lzwz/DtNGfnGPIZU0aIpydL0LlqA4sO6s3NoN9cXS4oLzU94
	ZHfTtxFMKWowXZSLCBMsAH0EO6t9FyZ3jIOzGX/bO8yNgMoTa0zw5Gd523qzdSIq+SRF3XFHO0x
	JJqfnOQfIbcZXaWG3595llOu0jQKFO7t/4I/CgYCRnHT7S8l5tSTIsVXe5yMGJgfpAB3ay+vso3
	1wdHNBImq6
X-Received: by 2002:a05:6a00:27a3:b0:821:81ef:5dec with SMTP id d2e1a72fcca58-82181ef6acdmr1855521b3a.8.1769044563642;
        Wed, 21 Jan 2026 17:16:03 -0800 (PST)
Received: from localhost ([71.212.200.220])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-81fa108b21fsm16266577b3a.13.2026.01.21.17.16.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 17:16:03 -0800 (PST)
From: Kevin Hilman <khilman@baylibre.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 arm-scmi@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFC v4 1/2] pmdomain: core: support domain hierarchy via
 power-domain-map
In-Reply-To: <CAPDyKFoU10ASgtXVUiCyj+rWehkMhkX=w=W1ieTksPdpskUN0Q@mail.gmail.com>
References: <20251119-pmdomain-hierarchy-onecell-v4-0-f25a1d5022f8@baylibre.com>
 <20251119-pmdomain-hierarchy-onecell-v4-1-f25a1d5022f8@baylibre.com>
 <CAPDyKFoU10ASgtXVUiCyj+rWehkMhkX=w=W1ieTksPdpskUN0Q@mail.gmail.com>
Date: Wed, 21 Jan 2026 17:16:02 -0800
Message-ID: <7hpl72wip9.fsf@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.96 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	TAGGED_FROM(0.00)[bounces-258165-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:7979, ipnet:213.196.21.0/24, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[khilman@baylibre.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	DBL_PROHIBIT(0.00)[0.0.0.11:email];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:helo,ams.mirrors.kernel.org:rdns,linaro.org:email,parent_args.np:url,ti.com:url,baylibre.com:mid,baylibre.com:email]
X-Rspamd-Queue-Id: A92B8603B6
X-Rspamd-Action: no action

Ulf Hansson <ulf.hansson@linaro.org> writes:

> On Thu, 20 Nov 2025 at 01:58, Kevin Hilman (TI.com)
> <khilman@baylibre.com> wrote:
>>
>> Add of_genpd_add_subdomain_map() helper function to support
>> hierarchical PM domains defined by using power-domains-map
>> property (c.f. nexus node maps in DT spec, section 2.5.1).
>>
>> This enables PM domain providers with #power-domain-cells > 0 to
>> establish subdomain relationships via the power-domain-map property,
>> which was not previously possible.
>>
>> This new helper function
>> - uses an OF helper to iterate to over entries in power-domain-map
>> - For each mapped entry: extracts child specifier, resolves parent phandle,
>>   extracts parent specifier args, and establishes subdomain relationship
>> - Uses genpd_add_subdomain() with proper gpd_list_lock mutex protection
>>
>> Example from k3-am62l.dtsi:
>>
>>   scmi_pds: protocol@11 {
>>       #power-domain-cells = <1>;
>>       power-domain-map = <15 &MAIN_PD>,  /* TIMER0 */
>>                          <19 &WKUP_PD>;  /* WKUP_TIMER0 */
>>   };
>>
>>   MAIN_PD: power-controller-main {
>>       #power-domain-cells = <0>;
>>   };
>>
>>   WKUP_PD: power-controller-main {
>>       #power-domain-cells = <0>;
>>   };
>>
>> This allows SCMI power domain 15 to become a subdomain of MAIN_PD, and
>> domain 19 to become a subdomain of WKUP_PD.
>
> Nitpick:
> As long as possible, please use the terminology "parent-domain" and
> "child-domain" and avoid "subdomain". There are a couple of cases of
> this, in the code too, can you please update all of them?

OK.

>>
>> Signed-off-by: Kevin Hilman (TI.com) <khilman@baylibre.com>
>> ---
>>  drivers/pmdomain/core.c   | 64 ++++++++++++++++++++++++++++++++++++++++++++++
>>  include/linux/pm_domain.h |  9 +++++++
>>  2 files changed, 73 insertions(+)
>>
>> diff --git a/drivers/pmdomain/core.c b/drivers/pmdomain/core.c
>> index 61c2277c9ce3..592e9126896c 100644
>> --- a/drivers/pmdomain/core.c
>> +++ b/drivers/pmdomain/core.c
>> @@ -3483,6 +3483,70 @@ int of_genpd_parse_idle_states(struct device_node *dn,
>>  }
>>  EXPORT_SYMBOL_GPL(of_genpd_parse_idle_states);
>>
>
> We need to add some description of the function here.

OK.

>> +int of_genpd_add_subdomain_map(struct device_node *np,
>
> Nitpick:
> Hmm, either we should keep consistency with the name
> "of_genpd_add_subdomain", according to what you propose - or we should
> take the opportunity to move to use "child" in the name instead
> (of_genpd_add_child_domain_map()).
>
> Sooner or later it would be nice if we could rename
> of_genpd_add_subdomain() (and friends) to of_genpd_add_child_domain().
>
> No big deal at this point, I am fine with whatever name you decide to use.

I will update the changelogs/comments/descriptions etc. to use
parent/child, but I will leave subdomain in the function name since
that's what all the other APIs use.  Then in a later cleanup step, we
could rename the subdomain APIs to child APIs.

>> +                              struct genpd_onecell_data *data)
>> +{
>> +       struct generic_pm_domain *genpd, *parent_genpd;
>
> Maybe use "child" and "parent" as variable names instead. This should
> make the code a bit more clear.

OK.

>> +       struct of_phandle_args child_args, parent_args;
>> +       int index = 0;
>> +       int ret = 0;
>> +       u32 child_index;
>> +
>> +       if (!np || !data)
>> +               return -EINVAL;
>> +
>> +       /* Iterate through power-domain-map entries using the OF helper */
>> +       while (!of_parse_map_iter(np, "power-domain", &index,
>> +                                  &child_args, &parent_args)) {
>> +               /* Extract the child domain index from the child specifier */
>> +               if (child_args.args_count < 1) {
>
> This should be exactly 1, right?

Hmm, I'm not sure exactly what you mean.  Are you suggesting this check
should be "!= 1" instead of "< 1"?

I think args_count should match #power-domain-cells.  So for SCMI, this
should indeed be 1.  But if this function is used for other domains
where #power-domain-cells is > 1, then the current check for "< 1" is
correct.

>> +                       of_node_put(parent_args.np);
>> +                       ret = -EINVAL;
>> +                       break;
>
> If we fail here, we should remove child domains that we added for the
> earlier indexes in the while loop, rather than just bailing out.
>
> This applies to other error paths below too.

Yeah, the current error handling isn't really in place (hence the RFC)
but I will add it for the next version.

I'm planning to take the approach that all children in the map have to
be successfully added in order for this function to be considered
successful.  If any of the children fail to get added (for any reason),
then they all should be removed.

This remove function will look *very* similar to the add function
because it will have to parse the map (again), finding parent and child
info and attempting to remove each child from the parent.

At first, this seems pretty inefficient, but I think it's better than
the add function being required to keep track of the state of which
domains were successfully added.  Which gets even more complicated if
there are multiple domains which use power-domain-map.

So fora now, I plan to avoid tracking all that state, and have the
remove function be a simple reversal of the add, but looping through the
whole map, even if it fails to remove some items (because they may not
have been added in the first place.)

>> +               }
>> +               child_index = child_args.args[0];
>> +
>> +               /* Validate child domain index */
>> +               if (child_index >= data->num_domains) {
>> +                       of_node_put(parent_args.np);
>> +                       continue;
>
> I don't think we should just continue here, but instead treat this as an error.

Yes.

>> +               }
>> +
>> +               genpd = data->domains[child_index];
>> +               if (!genpd) {
>> +                       of_node_put(parent_args.np);
>> +                       continue;
>
> Ditto.

Yes.

>> +               }
>> +
>> +               /* Get parent power domain from provider and establish subdomain relationship */
>> +               mutex_lock(&gpd_list_lock);
>> +
>> +               parent_genpd = genpd_get_from_provider(&parent_args);
>> +               if (IS_ERR(parent_genpd)) {
>> +                       mutex_unlock(&gpd_list_lock);
>> +                       of_node_put(parent_args.np);
>> +                       ret = PTR_ERR(parent_genpd);
>> +                       dev_err(&genpd->dev, "failed to get parent domain: %d\n", ret);
>
> Perhaps clarify the print by changing the text to state that we can't
> find the parent's OF provider. If the print is needed at all.

Print probably isn't needed at all, but just useful for development
debug purposes.

>> +                       break;
>> +               }
>> +
>> +               ret = genpd_add_subdomain(parent_genpd, genpd);
>> +               mutex_unlock(&gpd_list_lock);
>> +               of_node_put(parent_args.np);
>> +
>> +               if (ret) {
>> +                       dev_err(&genpd->dev, "failed to add as subdomain of %s: %d\n",
>> +                               parent_genpd->name, ret);
>> +                       break;
>> +               }
>> +
>> +               dev_info(&genpd->dev, "added as subdomain of %s\n",
>> +                       parent_genpd->name);
>> +       }
>> +
>> +       return ret;
>> +}
>
> Except for taking better care in the error path, it also looks like we
> are missing a corresponding function to remove the child-domains that
> was added with the above new function.
>
> Perhaps that function can be used in the error paths too?

Yeah, I as describe above.  I will add that for the next version.

Kevin

