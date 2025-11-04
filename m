Return-Path: <devicetree+bounces-234939-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A4DA7C32664
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 18:40:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D5FB1188A146
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 17:41:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1534303C9C;
	Tue,  4 Nov 2025 17:40:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="j6K5JJl2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 972F7328623
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 17:40:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762278030; cv=none; b=tZULVbm151Zdf4tDzaYANBwTfH/ypaco8Ve2tkJ73QrqyGXdUQukt2s7wmMKsWY9fTzyR/5/tRvRjofp/+S6qzDoZHp9VcRyRNtr/tcSCpkiq9ZgPge/6Tu4+ZfugxiSReZ1VLk9vWbZE7qyYhFt36+RtZ+nV181/tc2aOo9OYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762278030; c=relaxed/simple;
	bh=KamOxSeAipgU1rbqbwPiN5PXNmG3Cc1tJF2iWAItvPc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ftmmwHJvtd6ZJV1Mrr8Lc+TuWi7JqTx4hXQSQp13LPq6Ttz6LUPwPOmxItasTSnE/KF+eBhDB0oEruKSMEQJaGFQDHaW8ms0SlCubtcju1jIHpkxEFMKH/sOggEhbM7vI5tDzPQiy4R6Snk1ZeLn6TQyl1jBl6W/wP/oDUhA/wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=j6K5JJl2; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-27d67abd215so4585ad.0
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 09:40:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1762278028; x=1762882828; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/jfT88xD0KOzcLyagDzpznKX6WWcQ4Tbie23BrW5FcA=;
        b=j6K5JJl2sCKZuadmAnuPeJuhJ2MHuMFu9TSmvIYC5jRodjiLgtKgHVlVFsBjlqc/C5
         nbP3SZgE/zquuQIuMR1pzu5q8dJuR4Yma2MJQhdBzETS117Ys3aM1T1hYLJW5lAPc1N3
         jgUmnlpK3/x+dyRltkwfkzpLgGT58R9dlTsnZZwD/RBcNdC3OOuNdoQRU+HGzTJlegML
         ofK+ofq6FQIC3sjuhmXs5HOs2fu+EIM7xvQH5IcQdh32SSctdl7iFBy+mbZEF8Xct6dg
         TGXDaOC4BqW99TKYMq65bQ5h2Fvu7g6W8k2GkQ2fqOwKduXCNCREz65g1sg4nvbbc7wm
         zYUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762278028; x=1762882828;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/jfT88xD0KOzcLyagDzpznKX6WWcQ4Tbie23BrW5FcA=;
        b=iiFn7QzgX6CTm4xBKNoMql51w21Tkc/IBchwyMIi3iGgPOq3ubFGuyPzRGBy13ykUj
         /Ae9+V4vY8qQpN8MnwG8WUxWh4IKgK96UBlWdJ4je7hyDhYDfNiM39Xxz85Zk/lpIZt7
         RayFGr+4DcJysvH3YzLy7QSSP/M5h6PVCyJIy3zGOqCWWhFd1npncnXQJvsd7Woqr7tz
         tDJHtIOU7KTaHKHOqCSxJspqukOf+zlfWFuJKXx8wuF6T+ej3swYC9q3Vezc/wO87Fky
         fxLN+lHb496morvKKok8UkADOYimKQuCtWEHDxEMlcpr3UwbYTE7KfQdeVNH4SwoTwE1
         JYmA==
X-Forwarded-Encrypted: i=1; AJvYcCVhLSwonGIoB5lqwIP+qWG4Nll/iIRa1jYo/+YDT0FMW1A+QiqxJxB2cAkFWxH/ep5NXqAmNRu1Hvpu@vger.kernel.org
X-Gm-Message-State: AOJu0YxO2l6YCd7wzSFWou4/6ikASq6GqwolTB0osT0PLRKJdt7GmH5C
	lJMBJ4Z5jyei9Vh773H65+cjsxiP8vt1pqHxjITV8BfTQRGV50KuUacyqJSy44/bebbutqJ16To
	TGREevVjXeBP4NDbgot5z8UOhgTnE9ic6cWJc86K4
X-Gm-Gg: ASbGncu7sHxQT5Jt20zyitc4kNPgzyPCJ9R9pqphwOesxi6C9lJV9dJ3/47Mq5fQ+eq
	8lWCCjsq3eL1fc8G96rQX85OjRKmcKObQQdgHGHH49vZ2HsBVhVU/DbY2MLvAsbXMZ9SSr5SOpb
	z77sTV3WzlPsOm9xjrP3WowRD+V4G3bZRqcfktRtcWVtqvICLEP5PdhREXsAO8Uj0q79D0zAGTo
	WJx2X1mfmL6k1LQ+axPHOJ7OWVLmxIwP4fPKI2t0uSyPZEHKo8NeC3DeM2LldwRNoM744pjxY83
	dBbVN6T52VxVfWM=
X-Google-Smtp-Source: AGHT+IFtI0ANt6r/2+hZEYdPo9MIQ3FgcReJoH72fieCO+sc5XMcyfjciKQKi955Fim4SjjM2xy1Dd4lSJ7bJl+AH0k=
X-Received: by 2002:a17:902:e888:b0:26a:befc:e7e1 with SMTP id
 d9443c01a7336-295fdaee3aemr6120715ad.12.1762278027330; Tue, 04 Nov 2025
 09:40:27 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250821-imx94-ddr-pmu-v2-0-052c6420605d@nxp.com> <20250821-imx94-ddr-pmu-v2-3-052c6420605d@nxp.com>
In-Reply-To: <20250821-imx94-ddr-pmu-v2-3-052c6420605d@nxp.com>
From: Ian Rogers <irogers@google.com>
Date: Tue, 4 Nov 2025 09:40:15 -0800
X-Gm-Features: AWmQ_bmwvZDCteGTl9ZAIX7nqQG3lPWAF4Bp-vTXqzNi5uHkHP-MkyAZWUz5qN8
Message-ID: <CAP-5=fUd24kWOG7=8DpmiaMXkwdf9=BOzmoTrjn9b5Da0ZfP3g@mail.gmail.com>
Subject: Re: [PATCH v2 3/5] perf vendor events arm64:: Add i.MX94 DDR
 Performance Monitor metrics
To: Xu Yang <xu.yang_2@nxp.com>
Cc: Frank Li <Frank.li@nxp.com>, Will Deacon <will@kernel.org>, 
	Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	John Garry <john.g.garry@oracle.com>, James Clark <james.clark@linaro.org>, 
	Mike Leach <mike.leach@linaro.org>, Leo Yan <leo.yan@linux.dev>, 
	Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Namhyung Kim <namhyung@kernel.org>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@kernel.org>, 
	Adrian Hunter <adrian.hunter@intel.com>, linux-arm-kernel@lists.infradead.org, 
	linux-perf-users@vger.kernel.org, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, Peng Fan <peng.fan@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 21, 2025 at 4:02=E2=80=AFAM Xu Yang <xu.yang_2@nxp.com> wrote:
>
> Add JSON metrics for i.MX94 DDR Performance Monitor.
>
> Reviewed-by: Peng Fan <peng.fan@nxp.com>
> Reviewed-by: Frank Li <Frank.Li@nxp.com>
> Signed-off-by: Xu Yang <xu.yang_2@nxp.com>

Acked-by: Ian Rogers <irogers@google.com>

> ---
> Changes in v2:
>  - add Rb tag
> ---
>  .../arch/arm64/freescale/imx94/sys/ddrc.json       |   9 +
>  .../arch/arm64/freescale/imx94/sys/metrics.json    | 450 +++++++++++++++=
++++++
>  2 files changed, 459 insertions(+)
>
> diff --git a/tools/perf/pmu-events/arch/arm64/freescale/imx94/sys/ddrc.js=
on b/tools/perf/pmu-events/arch/arm64/freescale/imx94/sys/ddrc.json
> new file mode 100644
> index 0000000000000000000000000000000000000000..aa7b58721dc7e23dc9d9905a7=
9e0c1778b7bbf11
> --- /dev/null
> +++ b/tools/perf/pmu-events/arch/arm64/freescale/imx94/sys/ddrc.json
> @@ -0,0 +1,9 @@
> +[
> +   {
> +           "BriefDescription": "ddr cycles event",
> +           "EventCode": "0x00",
> +           "EventName": "imx94_ddr.cycles",
> +           "Unit": "imx9_ddr",
> +           "Compat": "imx94"
> +   }
> +]
> diff --git a/tools/perf/pmu-events/arch/arm64/freescale/imx94/sys/metrics=
.json b/tools/perf/pmu-events/arch/arm64/freescale/imx94/sys/metrics.json
> new file mode 100644
> index 0000000000000000000000000000000000000000..629f1f52761e2210ef43a9cbb=
a175871817e1230
> --- /dev/null
> +++ b/tools/perf/pmu-events/arch/arm64/freescale/imx94/sys/metrics.json
> @@ -0,0 +1,450 @@
> +[
> +       {
> +               "BriefDescription": "bandwidth usage for lpddr5 evk board=
",
> +               "MetricName": "imx94_bandwidth_usage.lpddr5",
> +               "MetricExpr": "(( imx9_ddr0@eddrtq_pm_rd_beat_filt0\\,axi=
_mask\\=3D0x000\\,axi_id\\=3D0x000@ + imx9_ddr0@eddrtq_pm_wr_beat_filt\\,ax=
i_mask\\=3D0x000\\,axi_id\\=3D0x000@ ) * 32 / duration_time) / (4266 * 1000=
000 * 4)",

nit: It is possible to have metrics use other metrics, this may read
better as (although I can't recall if the '.' needs escaping - I'm not
sure if the 4266 is significant):

((imx94_ddr_read.all + imx94_ddr_write.all) / duration_time)  / 17064e6

> +               "ScaleUnit": "1e2%",

nit: I think this would read more easily as "100%"

Thanks,
Ian

> +               "Unit": "imx9_ddr",
> +               "Compat": "imx94"
> +       },
> +       {
> +               "BriefDescription": "bandwidth usage for lpddr4 evk board=
",
> +               "MetricName": "imx94_bandwidth_usage.lpddr4",
> +               "MetricExpr": "(( imx9_ddr0@eddrtq_pm_rd_beat_filt0\\,axi=
_mask\\=3D0x000\\,axi_id\\=3D0x000@ + imx9_ddr0@eddrtq_pm_wr_beat_filt\\,ax=
i_mask\\=3D0x000\\,axi_id\\=3D0x000@ ) * 32 / duration_time) / (4266 * 1000=
000 * 4)",
> +               "ScaleUnit": "1e2%",
> +               "Unit": "imx9_ddr",
> +               "Compat": "imx94"
> +       },
> +       {
> +               "BriefDescription": "bytes of all masters read from ddr",
> +               "MetricName": "imx94_ddr_read.all",
> +               "MetricExpr": "( imx9_ddr0@eddrtq_pm_rd_beat_filt0\\,axi_=
mask\\=3D0x000\\,axi_id\\=3D0x000@ ) * 32",
> +               "ScaleUnit": "9.765625e-4KB",
> +               "Unit": "imx9_ddr",
> +               "Compat": "imx94"
> +       },
> +       {
> +               "BriefDescription": "bytes of all masters write to ddr",
> +               "MetricName": "imx94_ddr_write.all",
> +               "MetricExpr": "( imx9_ddr0@eddrtq_pm_wr_beat_filt\\,axi_m=
ask\\=3D0x000\\,axi_id\\=3D0x000@ ) * 32",
> +               "ScaleUnit": "9.765625e-4KB",
> +               "Unit": "imx9_ddr",
> +               "Compat": "imx94"
> +       },
> +       {
> +               "BriefDescription": "bytes of all a55 read from ddr",
> +               "MetricName": "imx94_ddr_read.a55_all",
> +               "MetricExpr": "( imx9_ddr0@eddrtq_pm_rd_beat_filt1\\,axi_=
mask\\=3D0x3fc\\,axi_id\\=3D0x000@ ) * 32",
> +               "ScaleUnit": "9.765625e-4KB",
> +               "Unit": "imx9_ddr",
> +               "Compat": "imx94"
> +       },
> +       {
> +               "BriefDescription": "bytes of all a55 write from ddr",
> +               "MetricName": "imx94_ddr_write.a55_all",
> +               "MetricExpr": "( imx9_ddr0@eddrtq_pm_wr_beat_filt\\,axi_m=
ask\\=3D0x3fc\\,axi_id\\=3D0x000@ ) * 32",
> +               "ScaleUnit": "9.765625e-4KB",
> +               "Unit": "imx9_ddr",
> +               "Compat": "imx94"
> +       },
> +       {
> +               "BriefDescription": "bytes of a55 core 0 read from ddr",
> +               "MetricName": "imx94_ddr_read.a55_0",
> +               "MetricExpr": "( imx9_ddr0@eddrtq_pm_rd_beat_filt2\\,axi_=
mask\\=3D0x3ff\\,axi_id\\=3D0x000@ ) * 32",
> +               "ScaleUnit": "9.765625e-4KB",
> +               "Unit": "imx9_ddr",
> +               "Compat": "imx94"
> +       },
> +       {
> +               "BriefDescription": "bytes of a55 core 0 write to ddr",
> +               "MetricName": "imx94_ddr_write.a55_0",
> +               "MetricExpr": "( imx9_ddr0@eddrtq_pm_wr_beat_filt\\,axi_m=
ask\\=3D0x3ff\\,axi_id\\=3D0x000@ ) * 32",
> +               "ScaleUnit": "9.765625e-4KB",
> +               "Unit": "imx9_ddr",
> +               "Compat": "imx94"
> +       },
> +       {
> +               "BriefDescription": "bytes of a55 core 1 read from ddr",
> +               "MetricName": "imx94_ddr_read.a55_1",
> +               "MetricExpr": "( imx9_ddr0@eddrtq_pm_rd_beat_filt0\\,axi_=
mask\\=3D0x00f\\,axi_id\\=3D0x001@ ) * 32",
> +               "ScaleUnit": "9.765625e-4KB",
> +               "Unit": "imx9_ddr",
> +               "Compat": "imx94"
> +       },
> +       {
> +               "BriefDescription": "bytes of a55 core 1 write to ddr",
> +               "MetricName": "imx94_ddr_write.a55_1",
> +               "MetricExpr": "( imx9_ddr0@eddrtq_pm_wr_beat_filt\\,axi_m=
ask\\=3D0x00f\\,axi_id\\=3D0x001@ ) * 32",
> +               "ScaleUnit": "9.765625e-4KB",
> +               "Unit": "imx9_ddr",
> +               "Compat": "imx94"
> +       },
> +       {
> +               "BriefDescription": "bytes of a55 core 2 read from ddr",
> +               "MetricName": "imx94_ddr_read.a55_2",
> +               "MetricExpr": "( imx9_ddr0@eddrtq_pm_rd_beat_filt1\\,axi_=
mask\\=3D0x00f\\,axi_id\\=3D0x002@ ) * 32",
> +               "ScaleUnit": "9.765625e-4KB",
> +               "Unit": "imx9_ddr",
> +               "Compat": "imx94"
> +       },
> +       {
> +               "BriefDescription": "bytes of a55 core 2 write to ddr",
> +               "MetricName": "imx94_ddr_write.a55_2",
> +               "MetricExpr": "( imx9_ddr0@eddrtq_pm_wr_beat_filt\\,axi_m=
ask\\=3D0x00f\\,axi_id\\=3D0x002@ ) * 32",
> +               "ScaleUnit": "9.765625e-4KB",
> +               "Unit": "imx9_ddr",
> +               "Compat": "imx94"
> +       },
> +       {
> +               "BriefDescription": "bytes of a55 core 3 read from ddr",
> +               "MetricName": "imx94_ddr_read.a55_3",
> +               "MetricExpr": "( imx9_ddr0@eddrtq_pm_rd_beat_filt2\\,axi_=
mask\\=3D0x00f\\,axi_id\\=3D0x003@ ) * 32",
> +               "ScaleUnit": "9.765625e-4KB",
> +               "Unit": "imx9_ddr",
> +               "Compat": "imx94"
> +       },
> +       {
> +               "BriefDescription": "bytes of a55 core 3 write to ddr",
> +               "MetricName": "imx94_ddr_write.a55_3",
> +               "MetricExpr": "( imx9_ddr0@eddrtq_pm_wr_beat_filt\\,axi_m=
ask\\=3D0x00f\\,axi_id\\=3D0x003@ ) * 32",
> +               "ScaleUnit": "9.765625e-4KB",
> +               "Unit": "imx9_ddr",
> +               "Compat": "imx94"
> +       },
> +       {
> +               "BriefDescription": "bytes of m7 core1 read from ddr",
> +               "MetricName": "imx94_ddr_read.m7_1",
> +               "MetricExpr": "( imx9_ddr0@eddrtq_pm_rd_beat_filt0\\,axi_=
mask\\=3D0x00f\\,axi_id\\=3D0x004@ ) * 32",
> +               "ScaleUnit": "9.765625e-4KB",
> +               "Unit": "imx9_ddr",
> +               "Compat": "imx94"
> +       },
> +       {
> +               "BriefDescription": "bytes of m7 core1 write to ddr",
> +               "MetricName": "imx94_ddr_write.m7_1",
> +               "MetricExpr": "( imx9_ddr0@eddrtq_pm_wr_beat_filt\\,axi_m=
ask\\=3D0x00f\\,axi_id\\=3D0x004@ ) * 32",
> +               "ScaleUnit": "9.765625e-4KB",
> +               "Unit": "imx9_ddr",
> +               "Compat": "imx94"
> +       },
> +       {
> +               "BriefDescription": "bytes of m33 core1 (in netc) read fr=
om ddr",
> +               "MetricName": "imx94_ddr_read.m33_1",
> +               "MetricExpr": "( imx9_ddr0@eddrtq_pm_rd_beat_filt1\\,axi_=
mask\\=3D0x00f\\,axi_id\\=3D0x005@ ) * 32",
> +               "ScaleUnit": "9.765625e-4KB",
> +               "Unit": "imx9_ddr",
> +               "Compat": "imx94"
> +       },
> +       {
> +               "BriefDescription": "bytes of m33 core1 (in netc) write t=
o ddr",
> +               "MetricName": "imx94_ddr_write.m33_1",
> +               "MetricExpr": "( imx9_ddr0@eddrtq_pm_wr_beat_filt\\,axi_m=
ask\\=3D0x00f\\,axi_id\\=3D0x005@ ) * 32",
> +               "ScaleUnit": "9.765625e-4KB",
> +               "Unit": "imx9_ddr",
> +               "Compat": "imx94"
> +       },
> +       {
> +               "BriefDescription": "bytes of pcie2 read from ddr",
> +               "MetricName": "imx94_ddr_read.pcie2",
> +               "MetricExpr": "( imx9_ddr0@eddrtq_pm_rd_beat_filt2\\,axi_=
mask\\=3D0x00f\\,axi_id\\=3D0x006@ ) * 32",
> +               "ScaleUnit": "9.765625e-4KB",
> +               "Unit": "imx9_ddr",
> +               "Compat": "imx94"
> +       },
> +       {
> +               "BriefDescription": "bytes of pcie2 write to ddr",
> +               "MetricName": "imx94_ddr_write.pcie2",
> +               "MetricExpr": "( imx9_ddr0@eddrtq_pm_wr_beat_filt\\,axi_m=
ask\\=3D0x00f\\,axi_id\\=3D0x006@ ) * 32",
> +               "ScaleUnit": "9.765625e-4KB",
> +               "Unit": "imx9_ddr",
> +               "Compat": "imx94"
> +       },
> +       {
> +               "BriefDescription": "bytes of Cortex-A DSU L3 evicted/ACP=
 transactions read from ddr",
> +               "MetricName": "imx94_ddr_read.cortex_a_dsu",
> +               "MetricExpr": "( imx9_ddr0@eddrtq_pm_rd_beat_filt0\\,axi_=
mask\\=3D0x00f\\,axi_id\\=3D0x007@ ) * 32",
> +               "ScaleUnit": "9.765625e-4KB",
> +               "Unit": "imx9_ddr",
> +               "Compat": "imx94"
> +       },
> +       {
> +               "BriefDescription": "bytes of Cortex-A DSU L3 evicted/ACP=
 transactions write to ddr",
> +               "MetricName": "imx94_ddr_write.cortex_a_dsu",
> +               "MetricExpr": "( imx9_ddr0@eddrtq_pm_wr_beat_filt\\,axi_m=
ask\\=3D0x00f\\,axi_id\\=3D0x007@ ) * 32",
> +               "ScaleUnit": "9.765625e-4KB",
> +               "Unit": "imx9_ddr",
> +               "Compat": "imx94"
> +       },
> +       {
> +               "BriefDescription": "bytes of m33 core0 read from ddr",
> +               "MetricName": "imx94_ddr_read.m33_0",
> +               "MetricExpr": "( imx9_ddr0@eddrtq_pm_rd_beat_filt1\\,axi_=
mask\\=3D0x00f\\,axi_id\\=3D0x008@ ) * 32",
> +               "ScaleUnit": "9.765625e-4KB",
> +               "Unit": "imx9_ddr",
> +               "Compat": "imx94"
> +       },
> +       {
> +               "BriefDescription": "bytes of m33 core0 write to ddr",
> +               "MetricName": "imx94_ddr_write.m33_0",
> +               "MetricExpr": "( imx9_ddr0@eddrtq_pm_wr_beat_filt\\,axi_m=
ask\\=3D0x00f\\,axi_id\\=3D0x008@ ) * 32",
> +               "ScaleUnit": "9.765625e-4KB",
> +               "Unit": "imx9_ddr",
> +               "Compat": "imx94"
> +       },
> +       {
> +               "BriefDescription": "bytes of m7 core0 read from ddr",
> +               "MetricName": "imx94_ddr_read.m7_0",
> +               "MetricExpr": "( imx9_ddr0@eddrtq_pm_rd_beat_filt2\\,axi_=
mask\\=3D0x00f\\,axi_id\\=3D0x009@ ) * 32",
> +               "ScaleUnit": "9.765625e-4KB",
> +               "Unit": "imx9_ddr",
> +               "Compat": "imx94"
> +       },
> +       {
> +               "BriefDescription": "bytes of m7 core0 write to ddr",
> +               "MetricName": "imx94_ddr_write.m7_0",
> +               "MetricExpr": "( imx9_ddr0@eddrtq_pm_wr_beat_filt\\,axi_m=
ask\\=3D0x00f\\,axi_id\\=3D0x009@ ) * 32",
> +               "ScaleUnit": "9.765625e-4KB",
> +               "Unit": "imx9_ddr",
> +               "Compat": "imx94"
> +       },
> +       {
> +               "BriefDescription": "bytes of sentinel read from ddr",
> +               "MetricName": "imx94_ddr_read.sentinel",
> +               "MetricExpr": "( imx9_ddr0@eddrtq_pm_rd_beat_filt0\\,axi_=
mask\\=3D0x00f\\,axi_id\\=3D0x00a@ ) * 32",
> +               "ScaleUnit": "9.765625e-4KB",
> +               "Unit": "imx9_ddr",
> +               "Compat": "imx94"
> +       },
> +       {
> +               "BriefDescription": "bytes of sentinel write to ddr",
> +               "MetricName": "imx94_ddr_write.sentinel",
> +               "MetricExpr": "( imx9_ddr0@eddrtq_pm_wr_beat_filt\\,axi_m=
ask\\=3D0x00f\\,axi_id\\=3D0x00a@ ) * 32",
> +               "ScaleUnit": "9.765625e-4KB",
> +               "Unit": "imx9_ddr",
> +               "Compat": "imx94"
> +       },
> +       {
> +               "BriefDescription": "bytes of edma1 read from ddr",
> +               "MetricName": "imx94_ddr_read.edma1",
> +               "MetricExpr": "( imx9_ddr0@eddrtq_pm_rd_beat_filt1\\,axi_=
mask\\=3D0x00f\\,axi_id\\=3D0x00b@ ) * 32",
> +               "ScaleUnit": "9.765625e-4KB",
> +               "Unit": "imx9_ddr",
> +               "Compat": "imx94"
> +       },
> +       {
> +               "BriefDescription": "bytes of edma1 write to ddr",
> +               "MetricName": "imx94_ddr_write.edma1",
> +               "MetricExpr": "( imx9_ddr0@eddrtq_pm_wr_beat_filt\\,axi_m=
ask\\=3D0x00f\\,axi_id\\=3D0x00b@ ) * 32",
> +               "ScaleUnit": "9.765625e-4KB",
> +               "Unit": "imx9_ddr",
> +               "Compat": "imx94"
> +       },
> +       {
> +               "BriefDescription": "bytes of edma2 read from ddr",
> +               "MetricName": "imx94_ddr_read.edma2",
> +               "MetricExpr": "( imx9_ddr0@eddrtq_pm_rd_beat_filt2\\,axi_=
mask\\=3D0x00f\\,axi_id\\=3D0x00c@ ) * 32",
> +               "ScaleUnit": "9.765625e-4KB",
> +               "Unit": "imx9_ddr",
> +               "Compat": "imx94"
> +       },
> +       {
> +               "BriefDescription": "bytes of edma2 write to ddr",
> +               "MetricName": "imx94_ddr_write.edma2",
> +               "MetricExpr": "( imx9_ddr0@eddrtq_pm_wr_beat_filt\\,axi_m=
ask\\=3D0x00f\\,axi_id\\=3D0x00c@ ) * 32",
> +               "ScaleUnit": "9.765625e-4KB",
> +               "Unit": "imx9_ddr",
> +               "Compat": "imx94"
> +       },
> +       {
> +               "BriefDescription": "bytes of netc read from ddr",
> +               "MetricName": "imx94_ddr_read.netc",
> +               "MetricExpr": "( imx9_ddr0@eddrtq_pm_rd_beat_filt0\\,axi_=
mask\\=3D0x00f\\,axi_id\\=3D0x00d@ ) * 32",
> +               "ScaleUnit": "9.765625e-4KB",
> +               "Unit": "imx9_ddr",
> +               "Compat": "imx94"
> +       },
> +       {
> +               "BriefDescription": "bytes of netc write to ddr",
> +               "MetricName": "imx94_ddr_write.netc",
> +               "MetricExpr": "( imx9_ddr0@eddrtq_pm_wr_beat_filt\\,axi_m=
ask\\=3D0x00f\\,axi_id\\=3D0x00d@ ) * 32",
> +               "ScaleUnit": "9.765625e-4KB",
> +               "Unit": "imx9_ddr",
> +               "Compat": "imx94"
> +       },
> +       {
> +               "BriefDescription": "bytes of aonmix read from ddr",
> +               "MetricName": "imx94_ddr_read.aonmix",
> +               "MetricExpr": "( imx9_ddr0@eddrtq_pm_rd_beat_filt2\\,axi_=
mask\\=3D0x00f\\,axi_id\\=3D0x00f@ ) * 32",
> +               "ScaleUnit": "9.765625e-4KB",
> +               "Unit": "imx9_ddr",
> +               "Compat": "imx94"
> +       },
> +       {
> +               "BriefDescription": "bytes of aonmix write to ddr",
> +               "MetricName": "imx94_ddr_write.aonmix",
> +               "MetricExpr": "( imx9_ddr0@eddrtq_pm_wr_beat_filt\\,axi_m=
ask\\=3D0x00f\\,axi_id\\=3D0x00f@ ) * 32",
> +               "ScaleUnit": "9.765625e-4KB",
> +               "Unit": "imx9_ddr",
> +               "Compat": "imx94"
> +       },
> +       {
> +               "BriefDescription": "bytes of npumix read from ddr",
> +               "MetricName": "imx94_ddr_read.npumix",
> +               "MetricExpr": "( imx9_ddr0@eddrtq_pm_rd_beat_filt0\\,axi_=
mask\\=3D0x3f0\\,axi_id\\=3D0x010@ ) * 32",
> +               "ScaleUnit": "9.765625e-4KB",
> +               "Unit": "imx9_ddr",
> +               "Compat": "imx94"
> +       },
> +       {
> +               "BriefDescription": "bytes of npumix write to ddr",
> +               "MetricName": "imx94_ddr_write.npumix",
> +               "MetricExpr": "( imx9_ddr0@eddrtq_pm_wr_beat_filt\\,axi_m=
ask\\=3D0x3f0\\,axi_id\\=3D0x010@ ) * 32",
> +               "ScaleUnit": "9.765625e-4KB",
> +               "Unit": "imx9_ddr",
> +               "Compat": "imx94"
> +       },
> +       {
> +               "BriefDescription": "bytes of usdhc1 read from ddr",
> +               "MetricName": "imx94_ddr_read.usdhc1",
> +               "MetricExpr": "( imx9_ddr0@eddrtq_pm_rd_beat_filt1\\,axi_=
mask\\=3D0x3f0\\,axi_id\\=3D0x0b0@ ) * 32",
> +               "ScaleUnit": "9.765625e-4KB",
> +               "Unit": "imx9_ddr",
> +               "Compat": "imx94"
> +       },
> +       {
> +               "BriefDescription": "bytes of usdhc1 write to ddr",
> +               "MetricName": "imx94_ddr_write.usdhc1",
> +               "MetricExpr": "( imx9_ddr0@eddrtq_pm_wr_beat_filt\\,axi_m=
ask\\=3D0x3f0\\,axi_id\\=3D0x0b0@ ) * 32",
> +               "ScaleUnit": "9.765625e-4KB",
> +               "Unit": "imx9_ddr",
> +               "Compat": "imx94"
> +       },
> +       {
> +               "BriefDescription": "bytes of usdhc2 read from ddr",
> +               "MetricName": "imx94_ddr_read.usdhc2",
> +               "MetricExpr": "( imx9_ddr0@eddrtq_pm_rd_beat_filt2\\,axi_=
mask\\=3D0x3f0\\,axi_id\\=3D0x0c0@ ) * 32",
> +               "ScaleUnit": "9.765625e-4KB",
> +               "Unit": "imx9_ddr",
> +               "Compat": "imx94"
> +       },
> +       {
> +               "BriefDescription": "bytes of usdhc2 write to ddr",
> +               "MetricName": "imx94_ddr_write.usdhc2",
> +               "MetricExpr": "( imx9_ddr0@eddrtq_pm_wr_beat_filt\\,axi_m=
ask\\=3D0x3f0\\,axi_id\\=3D0x0c0@ ) * 32",
> +               "ScaleUnit": "9.765625e-4KB",
> +               "Unit": "imx9_ddr",
> +               "Compat": "imx94"
> +       },
> +       {
> +               "BriefDescription": "bytes of usdhc3 read from ddr",
> +               "MetricName": "imx94_ddr_read.usdhc3",
> +               "MetricExpr": "( imx9_ddr0@eddrtq_pm_rd_beat_filt0\\,axi_=
mask\\=3D0x3f0\\,axi_id\\=3D0x0d0@ ) * 32",
> +               "ScaleUnit": "9.765625e-4KB",
> +               "Unit": "imx9_ddr",
> +               "Compat": "imx94"
> +       },
> +       {
> +               "BriefDescription": "bytes of usdhc3 write to ddr",
> +               "MetricName": "imx94_ddr_write.usdhc3",
> +               "MetricExpr": "( imx9_ddr0@eddrtq_pm_wr_beat_filt\\,axi_m=
ask\\=3D0x3f0\\,axi_id\\=3D0x0d0@ ) * 32",
> +               "ScaleUnit": "9.765625e-4KB",
> +               "Unit": "imx9_ddr",
> +               "Compat": "imx94"
> +       },
> +       {
> +               "BriefDescription": "bytes of xspi read from ddr",
> +               "MetricName": "imx94_ddr_read.xspi",
> +               "MetricExpr": "( imx9_ddr0@eddrtq_pm_rd_beat_filt2\\,axi_=
mask\\=3D0x3f0\\,axi_id\\=3D0x0f0@ ) * 32",
> +               "ScaleUnit": "9.765625e-4KB",
> +               "Unit": "imx9_ddr",
> +               "Compat": "imx94"
> +       },
> +       {
> +               "BriefDescription": "bytes of xspi write to ddr",
> +               "MetricName": "imx94_ddr_write.xspi",
> +               "MetricExpr": "( imx9_ddr0@eddrtq_pm_wr_beat_filt\\,axi_m=
ask\\=3D0x3f0\\,axi_id\\=3D0x0f0@ ) * 32",
> +               "ScaleUnit": "9.765625e-4KB",
> +               "Unit": "imx9_ddr",
> +               "Compat": "imx94"
> +       },
> +       {
> +               "BriefDescription": "bytes of pcie1 read from ddr",
> +               "MetricName": "imx94_ddr_read.pcie1",
> +               "MetricExpr": "( imx9_ddr0@eddrtq_pm_rd_beat_filt0\\,axi_=
mask\\=3D0x3f0\\,axi_id\\=3D0x100@ ) * 32",
> +               "ScaleUnit": "9.765625e-4KB",
> +               "Unit": "imx9_ddr",
> +               "Compat": "imx94"
> +       },
> +       {
> +               "BriefDescription": "bytes of pcie1 write to ddr",
> +               "MetricName": "imx94_ddr_write.pcie1",
> +               "MetricExpr": "( imx9_ddr0@eddrtq_pm_wr_beat_filt\\,axi_m=
ask\\=3D0x3f0\\,axi_id\\=3D0x100@ ) * 32",
> +               "ScaleUnit": "9.765625e-4KB",
> +               "Unit": "imx9_ddr",
> +               "Compat": "imx94"
> +       },
> +       {
> +               "BriefDescription": "bytes of usb1 read from ddr",
> +               "MetricName": "imx94_ddr_read.usb1",
> +               "MetricExpr": "( imx9_ddr0@eddrtq_pm_rd_beat_filt1\\,axi_=
mask\\=3D0x3f0\\,axi_id\\=3D0x140@ ) * 32",
> +               "ScaleUnit": "9.765625e-4KB",
> +               "Unit": "imx9_ddr",
> +               "Compat": "imx94"
> +       },
> +       {
> +               "BriefDescription": "bytes of usb1 write to ddr",
> +               "MetricName": "imx94_ddr_write.usb1",
> +               "MetricExpr": "( imx9_ddr0@eddrtq_pm_wr_beat_filt\\,axi_m=
ask\\=3D0x3f0\\,axi_id\\=3D0x140@ ) * 32",
> +               "ScaleUnit": "9.765625e-4KB",
> +               "Unit": "imx9_ddr",
> +               "Compat": "imx94"
> +       },
> +       {
> +               "BriefDescription": "bytes of usb2 read from ddr",
> +               "MetricName": "imx94_ddr_read.usb2",
> +               "MetricExpr": "( imx9_ddr0@eddrtq_pm_rd_beat_filt2\\,axi_=
mask\\=3D0x3f0\\,axi_id\\=3D0x150@ ) * 32",
> +               "ScaleUnit": "9.765625e-4KB",
> +               "Unit": "imx9_ddr",
> +               "Compat": "imx94"
> +       },
> +       {
> +               "BriefDescription": "bytes of usb2 write to ddr",
> +               "MetricName": "imx94_ddr_write.usb2",
> +               "MetricExpr": "( imx9_ddr0@eddrtq_pm_wr_beat_filt\\,axi_m=
ask\\=3D0x3f0\\,axi_id\\=3D0x150@ ) * 32",
> +               "ScaleUnit": "9.765625e-4KB",
> +               "Unit": "imx9_ddr",
> +               "Compat": "imx94"
> +       },
> +       {
> +               "BriefDescription": "bytes of pxp read from ddr",
> +               "MetricName": "imx94_ddr_read.pxp",
> +               "MetricExpr": "( imx9_ddr0@eddrtq_pm_rd_beat_filt0\\,axi_=
mask\\=3D0x3f0\\,axi_id\\=3D0x2a0@ ) * 32",
> +               "ScaleUnit": "9.765625e-4KB",
> +               "Unit": "imx9_ddr",
> +               "Compat": "imx94"
> +       },
> +       {
> +               "BriefDescription": "bytes of pxp write to ddr",
> +               "MetricName": "imx94_ddr_write.pxp",
> +               "MetricExpr": "( imx9_ddr0@eddrtq_pm_wr_beat_filt\\,axi_m=
ask\\=3D0x3f0\\,axi_id\\=3D0x2a0@ ) * 32",
> +               "ScaleUnit": "9.765625e-4KB",
> +               "Unit": "imx9_ddr",
> +               "Compat": "imx94"
> +       },
> +       {
> +               "BriefDescription": "bytes of dcif read from ddr",
> +               "MetricName": "imx94_ddr_read.dcif",
> +               "MetricExpr": "( imx9_ddr0@eddrtq_pm_rd_beat_filt1\\,axi_=
mask\\=3D0x3f0\\,axi_id\\=3D0x2b0@ ) * 32",
> +               "ScaleUnit": "9.765625e-4KB",
> +               "Unit": "imx9_ddr",
> +               "Compat": "imx94"
> +       },
> +       {
> +               "BriefDescription": "bytes of dcif write to ddr",
> +               "MetricName": "imx94_ddr_write.dcif",
> +               "MetricExpr": "( imx9_ddr0@eddrtq_pm_wr_beat_filt\\,axi_m=
ask\\=3D0x3f0\\,axi_id\\=3D0x2b0@ ) * 32",
> +               "ScaleUnit": "9.765625e-4KB",
> +               "Unit": "imx9_ddr",
> +               "Compat": "imx94"
> +       }
> +]
>
> --
> 2.34.1
>

