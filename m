Return-Path: <devicetree+bounces-253429-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id BA17AD0CAC7
	for <lists+devicetree@lfdr.de>; Sat, 10 Jan 2026 02:02:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id AE104300B9F5
	for <lists+devicetree@lfdr.de>; Sat, 10 Jan 2026 01:02:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D1EC1C7012;
	Sat, 10 Jan 2026 01:02:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="f1zGE/ap"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E92682C187
	for <devicetree@vger.kernel.org>; Sat, 10 Jan 2026 01:02:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768006967; cv=none; b=n1EK8sGu/B/ei7dqpYKH1p06K2d60ZlYDz/XcaPTiacdwn92aTaLePtvZZzxmPSPXqCHLMmaQnHxAv//L0lOjfecpiqiwSVp06zj23jgrJK2xACi3pu237iz8PxTh3wU9ULa4xfCN8wGvUCajzlW/rOb0BtLTDNGIpA5ICmsBJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768006967; c=relaxed/simple;
	bh=ixJdBpkE90qTHpaWpqSYWXgG2UnXLGOifDLwOvD7fYo=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZJNTUtmkpZAr7NsnV1PROyATnek+SE/IaiTRBq/58Gc4L8YflemqoPFEh3ErxJX/UEBXa0+sBg1nn9JHNPNcanMhVMkCy6/t2myopShi7H1gAfeY9xnMBTtcFj5W3+nO7OAgVs9BDi7Uq+OoyORpBMaxJ5QJ+N4qMxBZlJcvzic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=f1zGE/ap; arc=none smtp.client-ip=209.85.222.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f178.google.com with SMTP id af79cd13be357-8be92e393f8so390145585a.1
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 17:02:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768006965; x=1768611765; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=D46mdQMDj5+zG9XaeLULmbTRXkuU68sa+3jgTbNzvHI=;
        b=f1zGE/apwKIZ9XuSlDBjitRepgmRXnjNFx5hCiGOdhcTpvuOTZxFe5NLzZCAScDzIB
         30KGjdOB49YmdDjm6fVMeYgXK30nwVDADY1cuB6ifSihuMwpe9aEASlYcfRIuT4+JVeE
         NqwyqTl5IBcjr+owxzZ8n19KlPU3sUeI0AGBYC5MtDUOIfiVr1tsboEhLNW6Vi7eSzq8
         FRKwZ0k5Ve39d6sD0mrG06ZhXSEkfqT6jpjI5daIjEnmfHqpqPeoP/hGWVYFX4jVXr80
         F47Ncx0/+T7g9MlN0h2JzRxRCaEZDrj0kcFtKaQVW984hkZdvUbcKsDAbGqkFBPMlx4/
         CwFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768006965; x=1768611765;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=D46mdQMDj5+zG9XaeLULmbTRXkuU68sa+3jgTbNzvHI=;
        b=nYhxFH8C7VeLiOmNvhptNi16CTh8qNSvzDA0ohmi4ItjVlFLHuAlACPR4FI45MWkla
         n9ESCszxBfL+o238v7Y1X6ccVuAR54utuzbe4N44EqoFcgji0Sx4QGoMp6wMYirMXoGV
         CGyfavRTMfdPnUWM493X8ZVRvxRSIw80S48TBmKZpb37V+rVd+2XoWVanPrHtJIiSXKy
         7tWt6mHBQRtdzZhcWOJlh8JQT9GwUP24EGTEzDYjaQmmPCofB/nX3naHOpCQ8KRTXdOc
         dQGvurfnw6b4xPKlor+pE2c7SC+d6ojiy4ie/NFKiTOn8saoNxXFa2AdasRZUxDVPB8G
         u/5Q==
X-Forwarded-Encrypted: i=1; AJvYcCV+gBA0O0ZTGU7nVauFCq5yX/3k6yBolcLBSi7YRpgGVyVH2khFZsZ8D2W8qaKbUrODzXJgOKsO2cEi@vger.kernel.org
X-Gm-Message-State: AOJu0YwB6zEZz4uOqyTxsx8xGPf2yonYIezrvjnXQuhKLKjeS19yqMrr
	w38omMOaQC3vqpcupFD4dtvK0VtP/9frb1wxvLQWauEhqElpIeGIWLn2
X-Gm-Gg: AY/fxX6PLLA/WiGElCAsmQrIISEDkUrZjsw08t4uQe35pZs6nieK71tPlt2DxesZpc+
	YnUtmXk20OpHbTNrpEnNyYJkk1Zpz+iErR/IDBsXzZq1h3K2od6CKiFd7YHwh6R1Fla7aHIJRSq
	7nyIE4vd1eN2pPCvIoGcnYDTjkUnwvekklpMDWHiPzKDro4Q8eMNl+6c1WmWl/CCX+4f29n3dB5
	BMa6BvlpMd60FlSxc6ySTgWGQGgseQ3/IzXYEQsmwGGEsTAJ/Jdo+pmuuPelq4W7X0IF3TOUZIH
	t8LcUqoFlm3Ubwf76nYdLD0eb2TXPn9Bn4b2ozKZXnle9V/Yo3m5WlbjAKLQW/U5D0hIfLOUZ2c
	VlVcVeO2tGIRTAYnB2G2Z6khJtL3pPgm3YYJUzCKyS9JGCUQnZ6ts3D63UNJxJzsBRpg3ZSycYU
	X2HYM/dgrZmdvbLw==
X-Google-Smtp-Source: AGHT+IHBDzRmIpO26TQmtd7BhHH/NO3lWFMVLoQAqkeDRXpg/uMd9p6q/2JbD1+tj8TUF+imdXBEMQ==
X-Received: by 2002:a05:620a:4805:b0:8c1:aadb:5313 with SMTP id af79cd13be357-8c388bd8ef1mr1683928485a.25.1768006964911;
        Fri, 09 Jan 2026 17:02:44 -0800 (PST)
Received: from localhost ([184.144.58.243])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c37f51ceb5sm996870685a.35.2026.01.09.17.02.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 17:02:44 -0800 (PST)
Date: Fri, 9 Jan 2026 20:03:03 -0500
From: Richard Acayan <mailingradian@gmail.com>
To: Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [RFC PATCH 0/3] media: qcom: camss: support for empty endpoint
 nodes
Message-ID: <aWGlR31aNYbogtrg@rdacayan>
References: <20251230022759.9449-1-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251230022759.9449-1-mailingradian@gmail.com>

On Mon, Dec 29, 2025 at 09:27:56PM -0500, Richard Acayan wrote:
> This series adds support for empty endpoint nodes. It is currently RFC
> because it continues an ongoing discussion on how to selectively connect
> some CAMSS ports to cameras and leave others disconnected.
> 
> The SDM670 patches are for a full example. If agreed on, this should
> expand to SoCs that have CAMSS.

This series is abandoned now that it seems fine to add port labels. No
need for me to revisit this unless someone has an issue with the
proposed port labels in SDM670[1].

[1] https://lore.kernel.org/all/20260107043044.92485-4-mailingradian@gmail.com/

