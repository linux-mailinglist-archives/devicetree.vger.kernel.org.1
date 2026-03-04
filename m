Return-Path: <devicetree+bounces-271260-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IOSfC9eUqGkLvwAAu9opvQ
	(envelope-from <devicetree+bounces-271260-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 21:23:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 83961207921
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 21:23:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AD4EB301778E
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 20:22:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22589375F73;
	Wed,  4 Mar 2026 20:22:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RMN27bXJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BA9236C0B4
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 20:22:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.175
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772655730; cv=pass; b=KEu2H6sNPT7EOlCyOxFQv//MHhST0QnG6W/FMYTxqd3vrUsESRHIM0gTD4U4Kl+cWL5d14RJJorVjyCi4mNIzq2IvbOfVLiT/lozyQCWwet+25ef/WtYlsg3SjERqEjKRE1NIXixxHTTDC9NPC0MIW/xgHzOfSdPtIx9vit7SMw=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772655730; c=relaxed/simple;
	bh=Zm0BgH8DZ6/LvRihRZuXFgYwAxHcN1daM2YjG/J10GY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=u34uRvsDGe72o+TZ6qja/001SpeJrOV8Sal7jw7Nm3axIyiE8Ua+eEKVex0S4Z6INFP892NdFIKC3KHWguLHIcc04JcL0aP3T0J5v8yUWBEEiBP8A4BEYns7rFSeOqTLE043rK4LOiZOmEHczgD+rrL4/BbLeB2yMGHwxdvvz8s=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RMN27bXJ; arc=pass smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-386b553c70eso121822301fa.0
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 12:22:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772655727; cv=none;
        d=google.com; s=arc-20240605;
        b=KAN+voh3lu/rTyqq0mIpVv/bYT+rVp3dXmA/Ko3zkKApT928Y2+FsJhGa61DJwGVIt
         OJJLiWcLsN7cwhMGfrNcft1oy5uvpUPIf7KD3+VEx9nvZ8VnXarW6BOa7W1Dtz+M6WgN
         Bo5H7ApysFRhtVi15aYt4mGJLM74/Mlum29ucR3xgrMSxex5OYGba6DYCmYPTX1vv3SP
         r6NWM7PreGLcO3lpdbImJMCqdgt6zIEMke0WMZqZOklDng4HSMjmz5ndshdXEj5dE9/A
         9K7S6NjTX2aBglo69k4/7DrB3VPFKcmlE+Zze6guB0mzjks+Q8TozuscM9pKOunwBPAO
         3A2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=1amkl4f/I63ynWII3OMb2zdY1LWEy4GvB4FT/UgM71c=;
        fh=8s3hogSqwSA+sTWiz3khCgaqOvMFbHE80Ugrl5UBxWI=;
        b=kTRL1dzHhC/m+8/ZIQ+Lx1LOBTdL3MqYgz6NH6192ZMCh0tIyGxHsT+8lhh1yLlcXm
         HrDv1yz2PmQz6aZqFzjncoGe0kq4ZRul7XhmsSADxACgotyKS9w+A/Ls6KlMzug5nTHq
         pvFkB5E6bbKR8yFrDXZPsp9vDyh+4L0oCNP5acd/4iev3dhnT2DNFyVOZZT+7CtGh11Q
         oD0CUezPs7jBteiE/+C0nLWmPBLe8nj7FuntOZ4ae+0LEbM3dOhy7rdMUcvs8DDpcO8d
         tmfVJiAE/5XYBfAn3UpHgP8Yiu4nCgV5Cvw8loBJBnK8c/3wSlyCWuME9qR+LfNxDtGD
         /4Bw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772655727; x=1773260527; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1amkl4f/I63ynWII3OMb2zdY1LWEy4GvB4FT/UgM71c=;
        b=RMN27bXJaphj2qkkbrLbLkcC0h1FT39I9e4oRjppj+TVy6z45mFidcDwE30UCn2VJj
         6joqRH/flyDm4xsHxmSVM6jP2pgo1xCbxSjBVYTd+XXuQ1WFHtyewPuY6jepLuqrak41
         bqLbGnT48c+h9scsk/rMrJTr8v3jmdvwyIukkP2HQHMK4uNgda9m5J415Hksk2xVtaT0
         RYB1qHc7GCVKovDf9wCdn4+YHLqbaf3309ZZtgoRAjlmeevhC08tv048g/UHLQrvEvsd
         MIgnwACduk5dnP1LXPSrS9gnmy2RnX4vs4yoRVo+qw20IBwQzfp5R3lLORD5qOPemrtK
         DYbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772655727; x=1773260527;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=1amkl4f/I63ynWII3OMb2zdY1LWEy4GvB4FT/UgM71c=;
        b=W5nlF2+DEZZ7zT3Nf/oGflTYF8gsNwDKRw2N/exb0s8vaAIw9PsFSNCfkmlE784syQ
         Nkfp87x0S/T5Ywmcy3MK8ka/CLutcMCX+97p98KYP355aoffgHUcY/Lr73GkFlrT61gK
         aKneAwQwZYIALudS8RNmNiZglty2kcLDs+Qf7G8xPwbl0zlxGxR0a3PagfC2+wI/coqo
         4azK1/okpsho31AQnjSlgeWwLt4fD09B+b5B+SJASq7M+kOu86zR7uaGu0YolQ12kvGI
         edqSCQHYY/VvvuAgE1q9YieLs30Ifo7SIr3IFu59DJj+7wbBKUw4FHRPXeRlN13iYpr4
         ovhQ==
X-Forwarded-Encrypted: i=1; AJvYcCV2DK6ORViZaNWxmQTas+k2XqbuCFzghKI3SKcVXl2tgqF/eJXjHs8syJ3rLLEc25WZpsDYBoGjvFbz@vger.kernel.org
X-Gm-Message-State: AOJu0YzHtZQxn0gvt3LPIvYxqNQw3fmtqT+MQrv1yE9nNfofUCeSiqEi
	i4gm4E8B2n2pQXyqHEnpOx/n1XNgvjJtVJO0ApxKBwnMMrk6hecWxzUj12iDizouoikgTlFqAG1
	TqgWC44izMLXUOD4Q19W66Iy4d2PKmU4=
X-Gm-Gg: ATEYQzyE1gFeRbOBGMHkOpyBGWDtnbokfkDrynrNbNoqOomBIK0KUrQ4kggcpI4ZzsB
	W0bHT8t2M5xig+I1Z5kp5k+qwaCUaP+3hvEeG6VOvwwKUYaRgDQ3miKWZmAORFLj0ml+EmycIJX
	XnbinWHe9v6iceYJfLwy0Mv1y7QMytwUt+TlkQzHO0BZ2S62NXOrg5kk7FHiagPPcf1LOIYtdRk
	gUFoqzgevqoX156wDl8y/mVYz+n6klrcLFOOgaXyAmFsTd6xNvGAY3L+L1lafv7yIQ9vuaGK6B/
	i5xwI8pf2XSnskGLvFzmi/3ExEKCL6L5whOpAHLoXKeZqyof9RyTo9/mn98dJ095gTRK
X-Received: by 2002:a05:651c:1545:b0:386:91a1:f207 with SMTP id
 38308e7fff4ca-38a2c55f9cfmr25464581fa.2.1772655726349; Wed, 04 Mar 2026
 12:22:06 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260222-ch13726a-v1-0-e501d78e105a@gmail.com>
 <20260222-ch13726a-v1-1-e501d78e105a@gmail.com> <933fd2e0-46ff-4ab8-b98a-554ac46982c5@linaro.org>
 <CALHNRZ_TdVDy93uvM=p7ht50v0Y2W4Ji4ZsFwPFAgR8FZh=myw@mail.gmail.com> <8e7cff06-4b6a-4034-9b9a-1d4ae69a9bab@linaro.org>
In-Reply-To: <8e7cff06-4b6a-4034-9b9a-1d4ae69a9bab@linaro.org>
From: Aaron Kling <webgeek1234@gmail.com>
Date: Wed, 4 Mar 2026 14:21:55 -0600
X-Gm-Features: AaiRm51a4a5JRKhJpY9ftKBkw147QWoOleIMQvVrf_n00Ax6xrGrXqj2VAN1vgg
Message-ID: <CALHNRZ_JC=tNOXJ29POCB2Ln-SZLHK+FfrP_GjXQNAmc2YyF6g@mail.gmail.com>
Subject: Re: [PATCH RFC 1/2] dt-bindings: display: panel: Add ChipWealth
 CH13726A AMOLED driver bindings
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Jessica Zhang <jesszhan0024@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Teguh Sobirin <teguh@sobir.in>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 83961207921
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271260-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FREEMAIL_CC(0.00)[gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,lists.freedesktop.org,vger.kernel.org,sobir.in];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[webgeek1234@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,linaro.org:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,devicetree.org:url,mail.gmail.com:mid,holder.com:email]
X-Rspamd-Action: no action

On Wed, Mar 4, 2026 at 2:10=E2=80=AFPM Neil Armstrong <neil.armstrong@linar=
o.org> wrote:
>
> On 3/4/26 18:56, Aaron Kling wrote:
> > On Wed, Mar 4, 2026 at 10:32=E2=80=AFAM Neil Armstrong
> > <neil.armstrong@linaro.org> wrote:
> >>
> >> On 2/22/26 23:26, Aaron Kling via B4 Relay wrote:
> >>> From: Aaron Kling <webgeek1234@gmail.com>
> >>>
> >>> The Chip Wealth Technology CH13726A display driver is a single chip
> >>> solution for AMOLED using MIPI-DSI. This is used for the AYN Thor bot=
tom
> >>> panel.
> >>>
> >>> Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> >>> ---
> >>>    .../display/panel/chipwealth,ch13726a.yaml         | 66 ++++++++++=
++++++++++++
> >>>    1 file changed, 66 insertions(+)
> >>>
> >>> diff --git a/Documentation/devicetree/bindings/display/panel/chipweal=
th,ch13726a.yaml b/Documentation/devicetree/bindings/display/panel/chipweal=
th,ch13726a.yaml
> >>> new file mode 100644
> >>> index 0000000000000000000000000000000000000000..890984b00c34128506617=
6995e6a973c5607cbde
> >>> --- /dev/null
> >>> +++ b/Documentation/devicetree/bindings/display/panel/chipwealth,ch13=
726a.yaml
> >>> @@ -0,0 +1,66 @@
> >>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> >>> +%YAML 1.2
> >>> +---
> >>> +$id: http://devicetree.org/schemas/display/panel/chipwealth,ch13726a=
.yaml#
> >>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> >>> +
> >>> +title: Chip Wealth Technology CH13726A display driver
> >>> +
> >>> +maintainers:
> >>> +  - Place Holder <place@holder.com>
> >>
> >> ??
> >
> > Please see my reply on the cover [0].
>
> Sorry my bad, yes add me it's fine
>
> >
> >>> +
> >>> +description:
> >>> +  Chip Wealth Technology CH13726A is a single-chip solution
> >>> +  for AMOLED connected using a MIPI-DSI video interface.
> >>> +
> >>> +allOf:
> >>> +  - $ref: panel-common.yaml#
> >>> +
> >>> +properties:
> >>> +  compatible:
> >>> +    const: ayntec,thor-panel-bottom
> >>
> >> ??? why not chipwealth,ch13726a ??
> >
> > Because this is a driver chip that supports multiple panels. The
> > driver code I based on also supports the retroid pocket 5 panel, which
> > has a different resolution. Similar naming is used in the rocktech
> > jh057n00900 binding, which is why I picked this compatible.
>
> It doesn't work like that, add a compatible per physical device, not
> by driver. You can add common fallbacks if the panel is the same as anoth=
er.

So what should it look like then? The ch13726a is a chip that supports
multiple panels. The one I'm adding here is a 1240x1080 panel, no idea
what the manufacturer or model number is, just that it's used as the
bottom panel in the AYN Thor. The chip also supports a 1080x1920 panel
as found in the Retroid Pocket 5. Among many others. If the compatible
is chipwealth,ch13726a and nothing else, then how is the driver to
know what's plugged into the chip and what to report as the supported
modes?

> >
> >>> +
> >>> +  port: true
> >>> +  reg:
> >>> +    maxItems: 1
> >>> +    description: DSI virtual channel
> >>> +
> >>> +  vdd-supply: true
> >>> +  vddio-supply: true
> >>> +  vdd1v2-supply: true
> >>> +  avdd-supply: true
> >>> +
> >>> +  reset-gpios: true
> >>> +
> >>> +  rotation: true
> >>> +
> >>> +required:
> >>> +  - compatible
> >>> +  - reg
> >>> +  - vdd-supply
> >>> +  - vddio-supply
> >>> +  - vdd1v2-supply
> >>> +  - avdd-supply
> >>> +  - reset-gpios
> >>> +
> >>> +additionalProperties: false
> >>> +
> >>> +examples:
> >>> +  - |
> >>> +    #include <dt-bindings/gpio/gpio.h>
> >>> +
> >>> +    dsi {
> >>> +        #address-cells =3D <1>;
> >>> +        #size-cells =3D <0>;
> >>> +        panel@0 {
> >>> +            compatible =3D "ayntec,thor-panel-bottom";
> >>> +            reg =3D <0>;
> >>> +            vdd1v2-supply =3D <&vreg_l11b_1p2>;
> >>> +            vddio-supply =3D <&vdd_disp_1v8>;
> >>> +            vdd-supply =3D <&vreg_l13b_3p0>;
> >>> +            avdd-supply =3D <&vdd_disp2_2v8>;
> >>> +            reset-gpios =3D <&tlmm 133 GPIO_ACTIVE_HIGH>;
> >>> +        };
> >>> +    };
> >>> +
> >>> +...
> >>>
> >>
> >
> > Aaron
> >
> > [0] https://lore.kernel.org/dri-devel/20260222-ch13726a-v1-0-e501d78e10=
5a@gmail.com/
>

