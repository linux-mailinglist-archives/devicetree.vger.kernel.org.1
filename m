Return-Path: <devicetree+bounces-33976-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 531B2837E5B
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 02:38:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 84E661C28E7C
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 01:38:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89A9E5FDC4;
	Tue, 23 Jan 2024 00:42:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="gRKkcWqI"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B6EF5A7BC
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 00:42:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705970532; cv=none; b=nM8vxxjkneGP271mJKWS5/3aBGcBoBYZ5gd5HJkgj50+iZ6llj8tPmaZBU5R/iWTuoQqLaHqZ8utzuH0uldSyr8cUulAKoFnT5eW1UCUiDwzsNxgYm/p8p9PgJcUiKVAQjUMOQ3hPndZx4rMrUXc1kqPH0GCiaU21QoMUp7/gtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705970532; c=relaxed/simple;
	bh=VwqPrgd7nmKKcnkfxOGYkntoCNKE7mk8oKhqWaSqltQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=anqxJJR41Ku9xCkSthe+DXAe1nymc93vcX3yZX2Ym9XRBnt2U93ArdgT3AQ11jDBTJ/5pumYvvX1ub33EUvrg326fZMGVXfSzVlgTVjw0dX1/tnz+lzRNB4B+KbeHnGq1O9hsC1o2c7I0CEly8DN7J6uTlGIEyrpD9rvECz6lFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=gRKkcWqI; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1705970530;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=VwqPrgd7nmKKcnkfxOGYkntoCNKE7mk8oKhqWaSqltQ=;
	b=gRKkcWqINTz+M7liNaA0WCjxKPBOBHRpK3CzFVHfeBOKfIGjf4l9vvI+SRr7Ubs3nL3sBh
	xRr//KySmZFPqkIaM1BIsZJJBbmLVO7cq1cc1sPQ7JGcAzhg0dgraq19cuCDLQYmrWHJUZ
	r1HSpshMPeHRNgRSC4tC6AgDXfTv2io=
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-407-6mMZJkQiN4ui2FE3Dz4dFw-1; Mon, 22 Jan 2024 19:42:08 -0500
X-MC-Unique: 6mMZJkQiN4ui2FE3Dz4dFw-1
Received: by mail-ej1-f71.google.com with SMTP id a640c23a62f3a-a2b8bd6c6a3so342149866b.0
        for <devicetree@vger.kernel.org>; Mon, 22 Jan 2024 16:42:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705970527; x=1706575327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VwqPrgd7nmKKcnkfxOGYkntoCNKE7mk8oKhqWaSqltQ=;
        b=hpFXd6Y+zngvHSngkEhLlUy+ZkI9t1DyrtuVL5CT4sywhqbksZh8vl9YBNknEqdQU8
         TPYqN8QVKHtTkvgGRXczieKxWJ9vbwbX2Re+oWF0M/ygrkilO2PuyGlcgYuaxxbhufcm
         9rSuJ5aFg+t3bRkPo8tMHBBUTa75bhCpQv51RYAHfiAa1g6dzGpVoioEZOdxdcF9n38s
         iogazW0h0CC5TmZaK7da4inQzrF3Cu3RiMsDfDishPYzM/A70UzBCHpFJkuONnrTJ165
         XbJm268zdezB7cGV2v26YovYwESveCdAmv3AICGKxfDpTXBmmgoJWuiVOAyWneXWc3EN
         n0Cg==
X-Gm-Message-State: AOJu0YyGjoLsUVVvOgP1AKo4+Y2D+jjVcTeW5xoLg9AguLeU9VPECRVr
	ovYQ2tM06F/hEYnNmkkDg6KdgPwbjXW8lobETdw/ritGFfm4IuC02vecFGXyu+C9N3NDwxHkjgP
	l55Kx1CCU3tw30iNXCYc0prhHVn7vXaN5jPgFFZM7hjJaiW3eGpR3lhD73fDMLc/Pm7NxHvIX97
	4i/QufI3CzV8zGIeBBhlkgno3pTkA/jN0aIw==
X-Received: by 2002:a17:907:a78c:b0:a30:b9e8:9951 with SMTP id vx12-20020a170907a78c00b00a30b9e89951mr84093ejc.141.1705970527509;
        Mon, 22 Jan 2024 16:42:07 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEjpacoFjg2DlSHZrk9JiIB3fJNxgkIz5ULmHAQ+wUjzqKB3Xe0itHbAKRFNCNd0aoWKIw9daVwqJitUFlTFDA=
X-Received: by 2002:a17:907:a78c:b0:a30:b9e8:9951 with SMTP id
 vx12-20020a170907a78c00b00a30b9e89951mr84091ejc.141.1705970527255; Mon, 22
 Jan 2024 16:42:07 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240118155711.7601-1-quic_ninanaik@quicinc.com>
 <rq2dnfh6ctn5gbf3o3op5ywxx7zhx6r5sh5ykautye56o3p4dg@rjttk3rr65ld>
 <20240119191144.GR3013251@hu-bjorande-lv.qualcomm.com> <CAA8EJppLNFReZn1HK_radSkKkf5L584fx3FCuqG0FoUt4+H=nw@mail.gmail.com>
 <Za5xj8S3Gs7N-UUc@x1> <20240122200237.GB2936378@hu-bjorande-lv.qualcomm.com>
In-Reply-To: <20240122200237.GB2936378@hu-bjorande-lv.qualcomm.com>
From: Brian Masney <bmasney@redhat.com>
Date: Mon, 22 Jan 2024 19:41:32 -0500
Message-ID: <CABx5tq+pXi8uqk-GUwej-E_gVhQv-MO7VSnexQ2rq7aEE4ZiRA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sa8775p: Add new memory map updates to SA8775P
To: Bjorn Andersson <quic_bjorande@quicinc.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Eric Chanudet <echanude@redhat.com>, 
	Ninad Naik <quic_ninanaik@quicinc.com>, andersson@kernel.org, konrad.dybcio@linaro.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	quic_psodagud@quicinc.com, quic_kprasan@quicinc.com, quic_ymg@quicinc.com, 
	kernel@quicinc.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 22, 2024 at 3:02=E2=80=AFPM Bjorn Andersson
<quic_bjorande@quicinc.com> wrote:
> The problem I have with the patch is that I don't know which precedence
> it sets, because the commit message indicates that we have a new
> firmware version, while Eric's report lacks this information.
>
> As long as everyone with access to the hardware agrees that breaking
> backwards compatibility is the right thing to do, I'm not against it.
>
> But then again, if the support is under active development, why would
> anyone run a stable@ kernel on this thing?

Good point about the stable@ tag. This can go in the normal route then.

Brian


