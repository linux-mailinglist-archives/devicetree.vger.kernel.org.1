Return-Path: <devicetree+bounces-256064-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B1DE1D31435
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 13:44:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B909C3008CA6
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 12:44:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED74B2253AB;
	Fri, 16 Jan 2026 12:44:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kYVHhPOK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B1A921FF35
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 12:44:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768567449; cv=none; b=FApKSjj+faofSaM9Mjh9k4qgcrm44wSly9jYzQO431QmeVjWl1Dqd8+F3kIBYhDAu8wymc2J1cM2NS3lFy8PZ80sx/auQJ/BP7KRmVXZV7xkJnZMYTqGUrnnNk1wOzMlEurmd7sU9EC2+n5bS4Sa4QfLU1u53nWH+tEloSKiN4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768567449; c=relaxed/simple;
	bh=b+D73NJzR5tkQbyHArcS0qpplRGo9n9mhRHkUIUu64E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bAfhvRKzZa3yMckojVG7rVCLQjSHV3zhJm5zkj8GD0O+Qs+8G1fHMPNHklBm80tDEUzZWePyZWm2h6zWueQD18/6pjWg67+CyZpzOgz3aA8ysDiiEGg0RGcKwxMk9HqttQgl6bgq8he8iUJfKyZFv/4f1NBWeORGEtmABnFJn6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kYVHhPOK; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-47fedb7c68dso13601255e9.2
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 04:44:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768567445; x=1769172245; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3ZCf9q4Eq3f7Zk60HL0G320nGRoPqD1TASM4Kn6lCNs=;
        b=kYVHhPOKNpoMRPMgRXtPOiU/QprX21tHlx0cjalDns9a8fRHVZ7cO6He+X3EE0FmPx
         Ar53jGonXTVn/JSo55tIhu7OWjBZwhPMRnjRqZWi6+ueDnuiSt+u3aR127a/tAhFLJww
         XYOiwZc+kT+un4yOUf5XRzjCiB2BmeiUwu/X4lajFfQScEejTW3n1fOHhINkQYz6dXqZ
         Vv1bUAlJvlmAhWn62mxMtVM6iO2g7cpeEQRY0JJ8QoBr+WXr1FH3v/3R6hNoqj0+UxLh
         Z9XR1sfbTQmlEbam5M2cxt42wOLeUcxw6VMSmYzfT9o6+4hJPFBAxLchiP+v3pS4y5Ka
         wPkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768567445; x=1769172245;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3ZCf9q4Eq3f7Zk60HL0G320nGRoPqD1TASM4Kn6lCNs=;
        b=oH8xalawdIDntFnJpyeGFdsMnEdqgvRzgEZ4496+htvZqu8IIz61UeJBmVioQuGYeK
         JG+YduKhq57sOycSpj9a8Z0/Ms/HcMJ2bhaZADi2eneG1etlXLjRjnsPjKNrpaI4Nh/h
         XUGh2QyQJeMUF1QfldNn0zHbzxMzkvzs8xa0Fv5N9aXheOG+gSBX+QqcxSGXPCryjwCd
         1FWhyYK54bA2BEz+Zf9vP+UHE+qWWQA3v5rIapo7f6/MchjkKSGZNBjMfayFEfwHIy3a
         j+wA5JR+11I/dUaiNt+aRQvEbOJgtpa64+/AwWzoXv2GGh7JwJUwq15dBdBIJAruyY7L
         a/1A==
X-Forwarded-Encrypted: i=1; AJvYcCWnzmhVXSCbSx3kd2ohfD8OjGXujFPPIYuEXzGM2dSQkZAuEqIppUxluEN6ls1trOaPdI4dRxMrCtuq@vger.kernel.org
X-Gm-Message-State: AOJu0YxtZBQ6aYqoQgNLPhOaSSUaQnRlT6o3BU5kSMoCOaJvQwATBceV
	YaKb0IDz0lM7Y4X/HbJXvTMsDJQZgY1ruYOOcpsUDdKMovJ3Om7mnEHo
X-Gm-Gg: AY/fxX7ryBegYvwI/vgjw/ulfvVeuzpf5pZfjiwC1WUIHHWfDPFqUMty2OOifNwl7/1
	Os8MgzCCSzOfYNeH7//WRmxpKrFZS6fNdSCmzP+ngPRgj5p7xpvTAp8xIBq43+3lz5WIbypVQk8
	jirvyLIHr6DlZljoXBFccxyVUT7uknK8Fwoork8w0cgM0ibDso1jzQxyHjsssIRq5r1ykrj33im
	IVKOWKhTR4FgLMNW7i85Mh2bzgtGLDvnlH91HO4EQQ0ZQfwsOp+XdQGB19PaX6+pKKvIdsVQ/+z
	VWh/J/6iYimurcXONIOuRF0hdfAFilYKNQMgEeiPe/uKgidvQyM2BnjYhCQUuDtKLYalidFXRti
	dXCvEF5qyY5h1TQwEKUOoBhEfb7uC7RT+Y1XLinZAyTStkjC5tlWg2Rmtq04EQeSIKBpECg6wsy
	1BZLicuhBGtUTcYwGC0QssxnvKL1iBolBYKPXoJhwg6GhgbWPqnSlwCkIj7aVhjLHBpLo4cdzol
	Q==
X-Received: by 2002:a05:600c:8b56:b0:477:79f8:daa8 with SMTP id 5b1f17b1804b1-4801e34307emr39892975e9.17.1768567445526;
        Fri, 16 Jan 2026 04:44:05 -0800 (PST)
Received: from orome (p200300e41f0ffa00f22f74fffe1f3a53.dip0.t-ipconnect.de. [2003:e4:1f0f:fa00:f22f:74ff:fe1f:3a53])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4801e886834sm42518255e9.7.2026.01.16.04.44.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 04:44:04 -0800 (PST)
Date: Fri, 16 Jan 2026 13:44:02 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Ashish Mhetre <amhetre@nvidia.com>
Cc: will@kernel.org, robin.murphy@arm.com, joro@8bytes.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, nicolinc@nvidia.com, 
	jonathanh@nvidia.com, vdumpa@nvidia.com, jgg@ziepe.ca, 
	linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-tegra@vger.kernel.org
Subject: Re: [PATCH V8 3/4] dt-bindings: iommu: Add NVIDIA Tegra CMDQV support
Message-ID: <aWoyh0e2ncSsNW9y@orome>
References: <20260113054935.1945785-1-amhetre@nvidia.com>
 <20260113054935.1945785-4-amhetre@nvidia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="uf7gopu5xawojzkn"
Content-Disposition: inline
In-Reply-To: <20260113054935.1945785-4-amhetre@nvidia.com>


--uf7gopu5xawojzkn
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH V8 3/4] dt-bindings: iommu: Add NVIDIA Tegra CMDQV support
MIME-Version: 1.0

On Tue, Jan 13, 2026 at 05:49:34AM +0000, Ashish Mhetre wrote:
> The Command Queue Virtualization (CMDQV) hardware is part of the
> SMMUv3 implementation on NVIDIA Tegra SoCs. It assists in
> virtualizing the command queue for the SMMU.
>=20
> Add a new device tree binding document for nvidia,tegra264-cmdqv.
>=20
> Also update the arm,smmu-v3 binding to include an optional nvidia,cmdqv
> property. This property is a phandle to the CMDQV device node, allowing
> the SMMU driver to associate with its corresponding CMDQV instance.
> Restrict this property usage to Nvidia Tegra264 only.
>=20
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> Acked-by: Nicolin Chen <nicolinc@nvidia.com>
> Signed-off-by: Ashish Mhetre <amhetre@nvidia.com>
> ---
>  .../bindings/iommu/arm,smmu-v3.yaml           | 27 +++++++++++-
>  .../bindings/iommu/nvidia,tegra264-cmdqv.yaml | 42 +++++++++++++++++++
>  2 files changed, 68 insertions(+), 1 deletion(-)
>  create mode 100644 Documentation/devicetree/bindings/iommu/nvidia,tegra2=
64-cmdqv.yaml

Applied, thanks.

Thierry

--uf7gopu5xawojzkn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAmlqMpIACgkQ3SOs138+
s6F4CRAAs/LaZnTRigpuhM/Lhm5MOiVhksuu5bLPcQ++2uSJQtflBIADQkopKC3r
xfOY31m01LUKx75CeQGi7ekB6+wgtvMbIpX1Hr1caTIH3MLxrkgOumZJHKyclrYZ
vl3Ztc2CdmzUwSOXvNxtH/HwIzTXPOfMme+eBDZjT2iV2BxNMJc2KPuFI0HruduH
B/QqVO8FLcmIvPGqtneO8oaXtF/xrxiUojjxPdJmVNxUvdl/EIDf+VvQcEnhR+P0
YYFgMfEk493Vhi/XMhXAg9zKwm+1yhoC7vXdklGW8IMezknR79HxrzjXx/Z9DUK6
YFhItt0501jfhq+dqNWl7NaYDQtm/b2GxXHQ//cN2N+jEUSJDxbEec8YRPFJVlTL
+dlwu3GYvSatPHYP9tRzGuq13EK8EXtH9y5XYxl7+K314jo1kfv1YE/Acjva2hwu
kycXUDVl3ryPFeJuZX41H5jDGtbkh+cWdfm2hDdhwR93xBl4gMfQ96krMNwmfCJn
g1aIIQJDGg91F+17Bc4TkCIEscdp9026BmBJ8XzismHOM/uFw0hB+K4+dAX1TpvL
7uNCBSgP8MoXEN1i0tCaSq8N9zXvzp59DoCM99F8tpg8JLHR/oD3nYfqNS7rNwQn
JI9Gam81/Bg1MWrwgwqtKlN+oi3k0OvZfFyIEzEyavI45jDBk4k=
=ntP8
-----END PGP SIGNATURE-----

--uf7gopu5xawojzkn--

