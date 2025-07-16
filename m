Return-Path: <devicetree+bounces-196832-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CFF99B073D3
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 12:45:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D2BDD7A3B69
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 10:44:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF5862459D2;
	Wed, 16 Jul 2025 10:45:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="egHqAbpZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09FB5DF76
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 10:45:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752662741; cv=none; b=rJAeJIdD4hzmIkEn9YhxKaob8UAQcEFJ+zhUR6P0QeCrzEjFUgsrVDrz67/E5R2qy1gd8Y1dItB2YpQR54w3dUT5ZerkkG9KmQtFHOky/eQeOi4sTxHVg9LEN8K1qNfImXUVh/Z0NgFGyT/aPQ67zP+gl0ihVMDFvDV0gnDsAs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752662741; c=relaxed/simple;
	bh=Jg8QPqxN63wSXCahEjtlcVGTOkL8YAVvkPtplpcfZiQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GB7VZwv7IYHafwrG+Rz7j6usq6eOJZjGmtc7HJPfy3GFBNPKoTHlp7xFZkumCBP6dU1VTF71/QvZi1wrnqk9YwG/N/NHxJpVvpRNrPDLmwiPfwMf2IqW5XQSLwD0+n3qTf6Eft+2AeCkXuLDecbIVVK/RxBPWMB4lbpfJOqyCgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=egHqAbpZ; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-748d982e92cso4235564b3a.1
        for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 03:45:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752662739; x=1753267539; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=am+nIE1F4DSrpycFS2I1Wo9UrAjSnMRHqnP7j+RzKjs=;
        b=egHqAbpZwGfEIC/5qqwI4JZrPCkQv5oeOWpXTW20+bZc3F63eR9g3lpWq/A/aMYthQ
         X/0hCx0/W4XgEWkn5TBsjKgI8qB20H1JyeaU5E2DxBj4Jij5Aeb5EcK724F0i7+3KpTu
         rIHbdCjkSM6Ekb3+IlVup5AdOUn7RbPCrGsQLu1KVHn4f5DV8uq2xvPqgNQHJHw4amLC
         WV5ES4xQ7+yePmy1+zi8uear383c+WI7DMq3jFg/3hJ5XJIs0LeZNI9QzCWGys5TlL/j
         0xk7sfH8sK7wtw+Vulsy276SGPwIYzc6ILbrrle2m03sanK5vhOMCmiP3NR4IAwQEd8+
         MoSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752662739; x=1753267539;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=am+nIE1F4DSrpycFS2I1Wo9UrAjSnMRHqnP7j+RzKjs=;
        b=b0PxD4FHJJy6DUtJIoehEZJJuqj2hXN0lmh9PN6+z124tXsTVQlgNeDneRjChyzeyw
         C3t7X+jr9gmFT66OiaNg9sFimLNNGT8MlnkM0eiblBA4Mx2AgOALkhejdT9Y2jj5aN6I
         SLJo5Hh63anXcah61SMnnz6rg0Sy2bFOD1KuQOPlVzNceaQ4oWiJ5mZ5QEqjSNRBJRPu
         v0P05Mh19Y4GOhZ/Ua1ZCu6QU+N4Ouk0MIklEOaGzGRb/u2j30/ziiHTDtOY7kR7Jpt1
         pE5TvcrJczuIoOl7jfeuVrrNVvpLVW30+IZmHycPozOgGpem4kCgns2SjMqoFlpvFowW
         E0dA==
X-Forwarded-Encrypted: i=1; AJvYcCUnxjTWFPZ5TDem6pcOojsHnczJmOqFtlaKljrCvpBkiI0mA07ZNS2ow7/WJKgnDd6mnVS+JE80h5F1@vger.kernel.org
X-Gm-Message-State: AOJu0YyX/im3rt6t/WXW/P5Gcnpxm3sFcq+UJf5cfBFqLD7nMjBmbsSZ
	VxRySwIwfQfj7QfF0ii7OGL+2T8mDMitl7SvdgxTqLAtEMVR+LwG8C3pf9QrGttLnUk2onxik8y
	nXccaMzdDTPqzaRs52cGudSy0czxY/4TlnqKm2Vf7YQ==
X-Gm-Gg: ASbGncvIUkMczYRD9NAemFSJ85gu0SRk61T/yA4Cy4uiYlWLCoDN59TAq22urj12phl
	vj6gOj1XoH5/8BK4hBIW0wigGxEIxzSvpA58E7SL+eiDu5Z+jVVhlJD7JSArzUTG8aEf8B/xwLw
	wq6e0c5mn5M6QcZsZ6S5z62MBU21PtVGllAqWWwVjl8MBxRrMgJJcpggPq4Knl4efNbGxmU0vxC
	GAw2UWm3YXs4dRYsDhJGUw9CTrlnC23S5EXPIU=
X-Google-Smtp-Source: AGHT+IEGtieAB4UoSqjXN+Sg8qQxmS8F/1OUpyt87e81VvxutU4sB4qMtakTi8T2flz3Qyim3gB60CfRRRoknOXfGGQ=
X-Received: by 2002:a05:6a00:4644:b0:746:298e:4ed0 with SMTP id
 d2e1a72fcca58-756ea1de0c1mr3849454b3a.13.1752662739230; Wed, 16 Jul 2025
 03:45:39 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250703130453.4265-1-quic_jinlmao@quicinc.com>
 <20250703130453.4265-3-quic_jinlmao@quicinc.com> <20250703141905.GE1039028@e132581.arm.com>
 <0e7ae7d1-4877-4e8a-a0fb-0fda5cc03cf2@quicinc.com>
In-Reply-To: <0e7ae7d1-4877-4e8a-a0fb-0fda5cc03cf2@quicinc.com>
From: Mike Leach <mike.leach@linaro.org>
Date: Wed, 16 Jul 2025 11:45:27 +0100
X-Gm-Features: Ac12FXxbhbcdL16ZxrAYI1cGIXwRPQphg69YtVhrS7_0hd4B1XJVA6e6Ekha30Y
Message-ID: <CAJ9a7ViQ2A9FQV=fxzhu1DkZEBdiAvAijb6OjOeJriNio1nX6w@mail.gmail.com>
Subject: Re: [PATCH v8 2/2] coresight: Add label sysfs node support
To: Jinlong Mao <quic_jinlmao@quicinc.com>
Cc: Leo Yan <leo.yan@arm.com>, Suzuki K Poulose <suzuki.poulose@arm.com>, 
	James Clark <james.clark@arm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Mathieu Poirier <mathieu.poirier@linaro.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, coresight@lists.linaro.org, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi,

On Wed, 16 Jul 2025 at 03:43, Jinlong Mao <quic_jinlmao@quicinc.com> wrote:
>
>
>
> On 2025/7/3 22:19, Leo Yan wrote:
> > On Thu, Jul 03, 2025 at 09:04:53PM +0800, Mao Jinlong wrote:
> >
> > [...]
> >
> >> +static ssize_t label_show(struct device *dev,
> >> +            struct device_attribute *attr, char *buf)
> >> +{
> >> +
> >> +    const char *str;
> >> +    int ret = 0;
> >
> > No need to init ret to 0.
> >
> >> +    ret = fwnode_property_read_string(dev_fwnode(dev), "label", &str);
> >> +    if (ret == 0)
> >> +            return scnprintf(buf, PAGE_SIZE, "%s\n", str);
> >> +    else
> >> +            return ret;
> >> +}
> >> +static DEVICE_ATTR_RO(label);
> >> +
> >>   static struct attribute *coresight_sink_attrs[] = {
> >>      &dev_attr_enable_sink.attr,
> >> +    &dev_attr_label.attr,
> >>      NULL,
> >>   };
> >>   ATTRIBUTE_GROUPS(coresight_sink);
> >>
> >>   static struct attribute *coresight_source_attrs[] = {
> >>      &dev_attr_enable_source.attr,
> >> +    &dev_attr_label.attr,
> >>      NULL,
> >>   };
> >>   ATTRIBUTE_GROUPS(coresight_source);
> >>
> >> +static struct attribute *coresight_link_attrs[] = {
> >> +    &dev_attr_label.attr,
> >> +    NULL,
> >> +};
> >> +ATTRIBUTE_GROUPS(coresight_link);
> >> +
> >> +static struct attribute *coresight_helper_attrs[] = {
> >> +    &dev_attr_label.attr,
> >> +    NULL,
> >> +};
> >> +ATTRIBUTE_GROUPS(coresight_helper);
> >> +
> >
> > This change adds a 'label' entry for source, link, helper, and sink
> > components, but the documentation has only updated for three components:
> > CTI, funnel, and TPDM.
> >
> > Should we also update the documentation for all relevant components,
> > such as ETM, ETR, etc.?
> >
> > Additionally, patch 01 is missing the update to the ETM yaml file for
> > the new property. I checked patch v4 [1], which includes a change to
> > etm.yaml, but this change was dropped since v5. I briefly read the
> > v4 discussion thread and didn't see any mention of removing the ETM
> > related change. Did you see any particular issue when add label for
> > ETM devices?
> >
> > Overall, this series is fine for me. Just please ensure that all
> > relevant components are covered for completeness.
> >
> > Thanks,
> > Leo
> >
>
> I will update all coresight docs.
>
> Thanks
> Jinlong Mao
>
> > [1] https://patchwork.kernel.org/project/linux-arm-msm/cover/20240703122340.26864-1-quic_jinlmao@quicinc.com/
> >
> >>   const struct device_type coresight_dev_type[] = {
> >>      [CORESIGHT_DEV_TYPE_SINK] = {
> >>              .name = "sink",
> >> @@ -390,6 +420,7 @@ const struct device_type coresight_dev_type[] = {
> >>      },
> >>      [CORESIGHT_DEV_TYPE_LINK] = {
> >>              .name = "link",
> >> +            .groups = coresight_link_groups,
> >>      },
> >>      [CORESIGHT_DEV_TYPE_LINKSINK] = {
> >>              .name = "linksink",
> >> @@ -401,6 +432,7 @@ const struct device_type coresight_dev_type[] = {
> >>      },
> >>      [CORESIGHT_DEV_TYPE_HELPER] = {
> >>              .name = "helper",
> >> +            .groups = coresight_helper_groups,
> >>      }
> >>   };
> >>   /* Ensure the enum matches the names and groups */
> >> --
> >> 2.17.1
> >>
> >> _______________________________________________
> >> CoreSight mailing list -- coresight@lists.linaro.org
> >> To unsubscribe send an email to coresight-leave@lists.linaro.org
>

Revisiting this - the label DT attribute is purely optional, and
provides context for the hardware instance.
This code as written appears to add a "label" file to all devices,
irrespective of if the label is set in the DT.or not, with blank
labels where  the attribute is not present.
The visibility of the sysfs attribute should be controlled so that it
only appears if label is present in the DT.

Mike

-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

