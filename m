Return-Path: <devicetree+bounces-79822-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FBC9916EBA
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 19:02:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C2F901C20FDD
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 17:02:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EED9F172786;
	Tue, 25 Jun 2024 17:02:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ByHAGS4k"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C63C72F56;
	Tue, 25 Jun 2024 17:02:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719334946; cv=none; b=gM8Yq5jNg8S7Uckr480GESl03MRbbjjBeeFr9i4iO04NWni7JezO3Sb1PXW+wxSHAgAcFGcSe0HwZXBeBvo3JA1gPWAM+7XLf3CT5z39BF6auBkRlZ5hXClyOQJzC+JM2BGAv7NgLaLNs2sRKNE3facA1BqzisrkNB+GslmwE0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719334946; c=relaxed/simple;
	bh=Oh5sAlXn6WN8becYNMW28j8hBTwscXpDP8/IZ7aiyHI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=XewhKYW3YxUhPaJW8rVS3rjdz8hQQ84bJu4v0fqMqivsOvWvmI6A6+JUKRBJN2VmIRXhaYdjFa9J30V70k2/stt102JkWO4nJ6KH8obMgmfE1LwERdIBn+8EpHKC9WLsznphK8F28MSWbEfQDPXKiPu4PlvqkBovY5v7wWXw82I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ByHAGS4k; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2FF5FC32782;
	Tue, 25 Jun 2024 17:02:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719334946;
	bh=Oh5sAlXn6WN8becYNMW28j8hBTwscXpDP8/IZ7aiyHI=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=ByHAGS4kdgdDZIVC+4KnLnQAB/iM0nevPxL+1D+lVSxc4tx5cch+crSHh3JHAciA1
	 aMv7qsr2xhDp2jXVG747oJHcdzSqcZrFlu5mObYe3K0Pl9nFRm17R/bwPbymjtMu4D
	 +UPKIZWyLm8mOsgZaP4Xncvz2tYuvJ6SE2yvqkKynI/G+g34WuM+MVX7oVe+FOKLFv
	 VoAh03BL8S2f/CC6G+ui3PQz3qKj1eSHJChvIwbJHHZQhNuRlOou3dArT1ZYUbywjE
	 9PcWAS/ezCMIf727uQaFJSGumaJ4Du33nhvvpXA7ucm11oztZwY+7xJt2P9uoeAKRu
	 sPAKBViE3rQXQ==
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-52cd87277d8so4119227e87.2;
        Tue, 25 Jun 2024 10:02:26 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWRlduhxMHFzCGAcN3peCOLyPivfKQEBCMa9w0YEtmLL/HcXNbc58zTYRTY09ObinFQmaX+RvIVqAJDQ99IQqOKpTtvbDC4HJlumydPTDy8k5Mmquy/g4oAeeFk8MqtW1ZiTgKOzEUr9Q==
X-Gm-Message-State: AOJu0Yw1H0LJS2jzojfJpaiPcinmo1hKdswEaCQPIlc2ON1iexJ0p5tS
	SeoSk+vXZIWhRmEeuImO1nj2BDdDSSrHmrZJ/9vSorSWTk9evX25RjRJatOvJ/mv+R+J+2KPEGg
	iW0eYoCdzt3h3e2KmB9RRCrs8RQ==
X-Google-Smtp-Source: AGHT+IGBC9K5Rq/R3YbCAbk7HWfIeEzX+OMb8AAlSfm+cC/aWsiSZxxLMJF166GJvuNhI+8Xv7xFExxCGZFVoE3wOJQ=
X-Received: by 2002:ac2:5633:0:b0:52c:d753:2829 with SMTP id
 2adb3069b0e04-52ce1835212mr4855361e87.19.1719334944261; Tue, 25 Jun 2024
 10:02:24 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240624232122.3cfe03f8@booty>
In-Reply-To: <20240624232122.3cfe03f8@booty>
From: Rob Herring <robh@kernel.org>
Date: Tue, 25 Jun 2024 11:02:12 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+=mGEJXsjq1UZFMJtHko_z+doiFMXnx9K7exDuznymSA@mail.gmail.com>
Message-ID: <CAL_Jsq+=mGEJXsjq1UZFMJtHko_z+doiFMXnx9K7exDuznymSA@mail.gmail.com>
Subject: Re: Fixing property memory leaks on device tree overlay removal
To: Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Conor Dooley <conor@kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	Saravana Kannan <saravanak@google.com>, linux-kernel@vger.kernel.org, 
	=?UTF-8?Q?Herv=C3=A9_Codina?= <herve.codina@bootlin.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 24, 2024 at 3:21=E2=80=AFPM Luca Ceresoli <luca.ceresoli@bootli=
n.com> wrote:
>
> Hello,
>

This is a great summary of the issues with further overlay support.

> device tree overlays are implemented in the kernel since a long time,
> but there is currently no code using them, except unittest. The
> largest (in terms of code lines involved) blocker for enabling it is the
> memory leak of properties that happen on overlay removal [0]. The
> kernel warns about it on overlay insertion:
>
>   OF: overlay: WARNING: memory leak will occur if overlay removed, proper=
ty: /...

Maybe this needs to just be finer-grained and smarter. For example, we
know when we've leaked pointers (because you found the cases below).
We could set a flag in the node when that happens and then warn when
removing the overlay.

> We are working on a driver for a proprietary connector allowing a device
> to connect to an add-on board adding new non-discoverable hardware, and
> the driver is based on overlays. This has been discussed during ELC last
> April [1] and I sent a patch series implementing it in May [2].
>
> The property memory leak topic was mentioned but we haven't addressed
> the detail so far. This e-mail is meant to present our proposed plan
> to fix it.
>
> Receiving comments from the kernel community would be very valuable
> given the amount of work involved.
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Problem description
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> In the kernel every 'struct device_node' is refcounted so the OF core
> knows when to free it. There are of course get/put imbalance bugs
> around, but these are "just" bugs that need to be fixed as they are
> found.
>
> On the other hand, there is no refcounting for 'struct property'. Yet
> some of the internal kernel APIs to access properties, e.g.
> of_property_read_string(), return either a 'struct property' pointer or
> a copy of the 'char *value' field. This is not a bug, it is an API
> design flaw: any user (e.g. any OF driver) can take a pointer to
> property data that was allocated and should be deallocated by the OF
> core, but the OF core has no idea of when that pointer will stop being
> used.
>
> Now, when loading a DT overlay there are three possible cases:
>
>  1. both the property and the containing node are in the base tree
>  2. both the property and the containing node are in the same overlay
>  3. the property is in an overlay and the containing node is either
>     in the base tree or in a previously-loaded overlay
>
> Cases 1 and 2 are not problematic. In case 1 the data allocated for the
> properties is never removed. In case 2 the properties are removed when
> removing the parent node, which gets removed when removing the overlay
> thanks to 'struct device_node' refcounting, based on the assumption
> that the property lifetime is a subset of the parent node lifetime. The
> problem exists in case 3. Properties in case 3 are usually a small part
> of all the properties but there can be some (and there are some in the
> product we are working on), and that's what needs to be addressed.

I'd like to better understand what are the cases where you need to
change/add properties in a node (other than "status"). I'm not
entirely convinced we should even allow that.

> The kernel just doesn't know when to release these property structures,
> so the OF core code currently stores the properties loaded by overlays
> in a "deadprops" list within the parent node. They will be freed when
> the node itself is freed (based on node refcounting) in order to be
> safe. However it means they are memory leaks for case 3, where the node
> can be never removed.
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Approach 1: adding property refcount
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> The first option we considered is the obvious one: adding a refcount to
> 'struct property'. However this does not look like a very good solution
> as every user of a DT property in the kernel would need to put the
> property after getting and using it: this is already cumbersome and
> error-prone for nodes, and properties are usually many more than nodes.
> Besides it would add a memory and execution overhead to all properties,
> while only a small fraction is affected.

I'm glad you reached this conclusion.

>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Approach 2: change the property APIs to not return pointers
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> So we went back to the API design flaw and thought what API we would
> invent if we had to start from scratch now with the laodable overlay
> requirement in mind. We concluded the property API should just not
> return any pointer to 'struct property' or one of its fields. In other
> words, this is internal data of the OF core.

I think we also have to consider what Rust DT/property APIs will look
like. It's the same problem as Rust has clear rules on ownership and
lifetimes. So far, I've only seen of_find_property() show up, but
that's not getting accepted on my watch.

> We think the API to access DT properties should instead do one of these:
>
>  1. check whatever is needed and return the outcome, not the internal
>     data, e.g. like of_property_match_string()
>  2. if that is not possible, return a copy of the property value, that
>     the called will be responsible of, and which can outlive the struct
>     property if that make sense
>
> With this approach, it becomes safe to remove the overlay at any moment
> _unless_ one of these API functions is currently executing on any CPU
> core. To ensure there is no race condition we need a lock, probably
> using rwsem or RCU, to guard the APIs accessing properties. This can be
> coarse-grained (one global lock, or one lock per changeset) and needs no
> cooperation from callers, being all managed by the OF core.
>
> So this is is the option we plan to take.
>
> ~~~~~~~~~~~~~~~~~~~~~~~
> Accessor classification
> ~~~~~~~~~~~~~~~~~~~~~~~
>
> We examined and classified the various APIs that allow accessing the OF
> properties, which we called accessors, and counted their call sites.
>
> There are three kinds of property accessor functions in the OF APIs
> that need to be fixed:
>
>  1. classic accessors
>  2. for_each loop macros and supporting functions
>  3. OF reconfig notifiers
>
> -----------------
> Classic accessors
> -----------------
>
> Classic accessors are those that return some property value. Examples
> include:
>
>   of_find_property()
>   of_property_read_string()
>   of_get_property()
>   of_property_read_string_index()

Eliminating/limiting of_(find|get)_property() has been on my list for
some time. I've been chipping away at it slowly.

of_property_read_string() is the "new" typed API, but yes, that's a problem=
.


> Classic accessors have lots of call sites: we counted about 1900. Many
> are in drivers and will need to be addressed individually, one by one.
> So the plan is to add new "safe" accessors and progressively convert
> drivers and other call sites to use them, to eventually remove the
> current unsafe accessors.

1200 of these are of_(get|find)_property. Of that 500 are in arch and
almost all powerpc and sparc which we can probably exclude from all
this. That leaves drivers/ and sound/ mostly. A good percentage of
those looks like powerpc and sparc drivers. 70 are internal to
drivers/of/.

Of the remaining ones, which ones could ever be in an overlay? I don't
really see much: gpio-fan, pwm backlight, a USB hub, etc.

> One supporting strategy in that direction is making 'struct property'
> opaque, which would ensure its fields just cannot be accessed directly.
> I attempted it and the amount of code that gets broken and needs to be
> fixed is "manageable".
>
> An even stronger strategy is to move struct property completely outside
> in-kernel public include files (i.e. from include/linux/of.h to
> drivers/of/of_private.h) so even struct property pointer cannot exist
> anymore outside of the OF core. However this is quite extreme and very
> hard to apply (see the section about for_each loops).

Making that and device_node opaque have also been on my todo. I
started some work on device_node, but didn't get too far.

>
> ---------------------------------------------
> for_each loop macros and supporting functions
> ---------------------------------------------
>
> Fixing the for_each iterators (about 140 call sites) is hard because
> they use 'struct property' pointers "internally", but being macros the
> iterarot is exposed to code using those macros. So we propose a
> mitigation strategy that is more approachable and a removal strategy.
>
> The mitigation strategy is based on the declaring variables in the for
> loop init clause, as allowed since the kernel has moved to C gnu11.
> This would allow replacing typical code like:
>
>   struct device_node *node =3D <...>;
>   struct property *prop;
>   const __be32 *cur;
>   u32 rate;
>
>   of_property_for_each_u32(node, "my-property", prop, cur, rate) {
>
> with code like:
>
>   struct device_node *node =3D <...>;
>   u32 rate;
>
>   of_property_for_each_u32(node, "my-property", rate) {
>
> This is only a mitigation strategy because it would not strictly forbid
> access to the struct property and the __be32 variables. But it would
> make it less easy and much more visible to code reviewers and possibly
> checkpatch, and as such it would make it hard to add my mistake. It
> also makes code simpler and more readable so it is an overall
> improvement as well.

That would be a nice clean-up.

For for_each_property_of_node(), I think we can eliminate it. There's
only a few cases, and most are looking for property names with a
specific prefix or suffix. There's several copies just for
regulators...

>
> This is simple to implement and at first glance about half of the call
> sites can benefit. For those which cannot, an ad-hoc solution must be
> devised, possibly based on a full array copy as a last resort.
>
> The removal strategy involves a total removal of these looping macros,
> in lack of a way to implement them without giving access to the
> property and iterator pointers. Removal of these APIs would involve
> replacing them with specific accessors that internally loop and do what
> is needed (for common cases) or return a full copy for other cases.
> Passing a callback for the looping function to operate on members is
> also potentially doable but cumbersome for callers.
>
> Instead of the removal strategy I think there might be better tools,
> but I still haven't done a real evaluations so far.
>
> Note that if struct property were made internal, the removal strategy
> would become unavoidable.
>
> ---------------------
> OF reconfig notifiers
> ---------------------
>
> Reconfig notifiers are callbacks that can be enabled in order to be
> notified of changes to the device tree. The APIs themselves are not
> leaking internal pointers, but the notifier callbacks are passed a
> 'struct of_reconfig_data *' parameter which contains pointers to the
> old and new struct property pointers.
>
> If struct property were opaque this would not expose pointers to
> property name/len/value. Still the struct property pointer would be
> exposed. So we propose to make the entire struct of_reconfig_data
> opaque.
>
> The drawback is that several new (trivial) accessors would be needed to
> get the data from such an opaque structure. However call sites of
> notifiers are limited (about 10), some don=E2=80=99t even access properti=
es at
> all and others appear to use them carefully, so a fix would be
> relatively simple to do.

I need to study this more, but a notifier is never a great design so
maybe we can come up with something better.

>
> ~~~~~~~~~~~~~~~
> Transition plan
> ~~~~~~~~~~~~~~~
>
> Transitioning to the new accessors is not going to happen quickly given
> the amount of call sites, so we devised a strategy to incrementally
> approach it while avoiding introducing new calls to the old APIs.
>
> The transition plan is based on adding a Kconfig symbol (a tentative
> name is CONFIG_EXPORT_UNSAFE_OF_ACCESSORS) meaning =E2=80=9Cexport old OF
> accessor functions returning pointers to firmware data=E2=80=9D and defau=
lting
> to =E2=80=98y=E2=80=99 to avoid breaking current usages. When this is set=
 to =E2=80=98n=E2=80=99:
>
>  - The old accessors returning pointers to struct property values are
>    not built, or at least not exported outside the OF core
>  - So any defconfig with at least one driver using the old accessors
>    would just not build, which allows to easily find out what needs to
>    be updated if one wants to remove overlays in their specific
>    configuration, or to disable unneeded drivers that are not yet
>    updated
>  - The property leaks under discussion are not possible anymore
>  - The deadprops list and the warning are not built
>  - Note: we need to ensure automated test bots won=E2=80=99t set this set=
ting
>    to =E2=80=98n=E2=80=99 or they will fail
>
> Any code using DT overlays, including the connector driver proposed in
> [2], can depend on CONFIG_EXPORT_UNSAFE_OF_ACCESSORS=3Dn, to ensure the
> leaking APIs are never called when runtime-loadable overlays are in use.
>
> Preventing new usages of old accessors will be important. Tools to
> achieve that:
>
>  * Extend checkpatch to report an error on their usage
>  * Add a 'K:' entry to MAINTAINERS so that patches trying to use them
>    will be reported (to me at least)

That would be good, but I have doubts on it preventing new users. Not
that we shouldn't do it, but if I had a dollar for everytime I said
run get_maintainers.pl or checkpatch.pl... I have wanted to document
various functions which are "don't add new users unless you really
have to". Things like of_iomap() or of_irq_*.

> Once all call sites are updated to the new API, the old API can be
> removed entirely along with the deadprops list and the
> CONFIG_EXPORT_UNSAFE_OF_ACCESSORS Kconfig symbol.

I don't like the kconfig symbol even if it is temporary. How does it
get configured for a multi-platform kernel?

> =3D=3D=3D=3D=3D=3D=3D
> Roadmap
> =3D=3D=3D=3D=3D=3D=3D
>
> We plan to address this in various steps, in order to allow an easier
> review process and to have the various changes tested progressively.
>
> The main steps in our roadmap are:
>
>  1. Make struct property opaque and fix code that gets broken
>  2. Main API transition (class 1):
>     - Add new safe accessors
>     - Implement CONFIG_EXPORT_UNSAFE_OF_ACCESSORS to hide leaking
>       accessors
>     - Document the above
>     - OF implementation
>     - fwnode wrapper (for ACPI+SWNODE)
>     - rwsem/RCU synchronisation mechanism
>     - convert a few drivers
>  3. Prevent new patches using old accessors from being merged
>     (checkpatch, MAINTAINERS...)
>  4. Convert a significant number of drivers (enough to support a
>     complex SoC)

But why? Pretty much all of the SoC support is fixed. We only need to
avoid leaking pointers for the parts which can be dynamic. We know
which nodes and properties are dynamic already. Of course there's the
LAN96xx the SoC is the PCI device case, but that's a bit special in
that we would be removing everything.

Can't we just WARN on using the old accessors on nodes or properties
which are dynamic?

>  5. for_each loops (class 2) mitigation strategy
>  6. Make struct of_reconfig_data opaque (class 3)
>  7. for_each loops (class 2) full removal strategy
>
> We think the necessity of the last two step is subject to discussion,
> while all the previous ones are required.
>
> Note there is no "convert all call sites" in the plan. The amount of
> drivers alone is huge, and converting all of them would not be doable
> entirely by us both in terms of amount of work and for lack of hardware
> to test the changes.

That would only be necessary if we allow any change everywhere in a DT
on every system. IOW, if we accepted the userspace configfs overlay
applying patchset. If things are constrained to specific systems and
specific parts of a DT (e.g. under a connector node), then it is a lot
fewer pieces to fix. If powerpc is excluded for example, that alone
eliminates a bunch of code and drivers to worry about.

Rob

