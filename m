Return-Path: <devicetree+bounces-269657-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mFtoDVmeo2k3IQUAu9opvQ
	(envelope-from <devicetree+bounces-269657-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 03:03:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CCC4A1CCB8A
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 03:03:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5A53A3040D8B
	for <lists+devicetree@lfdr.de>; Sun,  1 Mar 2026 01:58:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 971DE2E6CC0;
	Sun,  1 Mar 2026 01:58:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="RIKyK0dx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 940982DB7B5
	for <devicetree@vger.kernel.org>; Sun,  1 Mar 2026 01:58:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.49
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772330308; cv=pass; b=q00K1ONts1w8zdl3aL5jaWUjal58PEwNBYLrzHbfNSrBJn6p4JxmlAfNoNIRSqbQxL3xd9f3r27wF0MTGcEotDunAbsmG6whXvQUNQS4zQg/1KynnWztClR4ntvlrvtbJOMtH2HmGiN27nIvb/SpOll50lhW9NS+xxiueauevJE=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772330308; c=relaxed/simple;
	bh=bVhil1t7ubBiAQLxatRQvkSC+0eijQp7a2xsJoQSnhg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZfkSsD8hfd3oaSVD28FLm5/US9BI9FV9kPXkWUdKgAqu9HcTxMTbY029Ziqh943YSFEYCsHZlOZXlHwy0bb6onVaTJ79H+HMKVTk04Z44I3KD/eQewrpN/avjWrQ76JX5gLOX1J2n1FimLt4i49NXWXr6mARzU+zziutEfSknYg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=RIKyK0dx; arc=pass smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-65fac0b51baso6555283a12.0
        for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 17:58:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772330304; cv=none;
        d=google.com; s=arc-20240605;
        b=Vunty02jYk4m0SRiqYPpILYp73oMsQ8mdsEWCwgQWrglNKwVQgIW51rTkPqqOMRFu6
         X8zpI/duf0uAJrGxDAX32FRKvrQUi8uqk/5Q3CAG1YAeBxq/rHjrnMeYYWf3ryyZarSn
         6XFLXrHDhDakg+wsYus1HmMxt9g6WC3nmHsyT/rddQnklwGUispAPpMwdrAY1kGoXb7M
         58/i98m+AYwSEKI25MT2besXC+WT0LJQNBhlriKM1fozcB30ADyKeNBHDvM85ThaNeO6
         cVaEqr5p1KdRSqLJIFWt+D+XVTq5ZMRbZsKzL13gsNcdrt/kgKhtysHRs07tq8ZJfc1l
         iwKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=54nUUoZYBk6/nmzbYKQgAP9HVkFunlgn9EvNWRbux98=;
        fh=zEVYyJX0/jT9q2O9T1e55r3KVjabP9wILP+5kbF3O50=;
        b=bwxQ7AyAFTjPw+bjONjLNA4GC/+u6W/y5EEEF9fj2QVTv6YsTnESvyuZqYyNUm/5YA
         Z4kXPdlpo38iU05krewQP/aisLulCBzfrHX6H9QsGY5uYDgM38Jk032y06sqRaUMpjup
         jOLSx21zpjlnWRUa0aYXJzxEIqDaKXWsUN9s5boC27oG53cjKEIozobiLV94S3z0A7a3
         1DKsYJL1+OjOuPOoh0iBnYaSJzu6WZnO1NzBJzmkMWklRu3gy6BDoIC4zo4GuHupW9gK
         1020GSVgUSTY59bqiMBPEmh2NE54XbhMiUW2/iVAS4EiKJ+1uEjKbeU769cEyUSaoOyK
         DoVQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1772330304; x=1772935104; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=54nUUoZYBk6/nmzbYKQgAP9HVkFunlgn9EvNWRbux98=;
        b=RIKyK0dxNcMGAq5OePUwa1ZeO3FFOnqeI+jYancJn5tH7uFvW6Y29ygmVQL9JzbfY1
         5HkIBIJOdNJZ01AVKtMqmDiT0QbKWjTuTq4LpY99fMAMgMxc/kqGO2OBcGkUcokHUSZu
         dY3jvO8W27kJQ+Du+0AEuIHOyE+6A3cHF5UQyyZJKS0u9ZkHnbq2sW5HygsEu0FcciVJ
         QJBkFX0mU3jqR0bLZ3/fP+mO7wYa5btWXUKn4KMGQFgfFuHG7kPa0XevG0Iajkkn2pWP
         hJk8G5UzrmMOmv5dL7slE6Q3ktQ6G+FLR4931eBvzEL/lj8gGb/MGDSHcRZO2HjOX75G
         yZaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772330304; x=1772935104;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=54nUUoZYBk6/nmzbYKQgAP9HVkFunlgn9EvNWRbux98=;
        b=KquEkaxE8/dY5GYsGd9AIg7Nuv5cvatuJEhRwuFOUUYrenP9oV9FWgE4b3jrAMo8ul
         IoOYWeXPixQl3hz25Zqw8/7EwLX+VWEZzrK+y/GzwGrPrW4DIILEZF4CDTx7nS8OBdpz
         Mbub3+VYh5Ful33VcpC13y/Z3bLiDc5Sfm84/4rzLBE4f0JK+ZkRP8LibM/ONK3S3QX0
         wD2kjzaTRgVYJka8O8LOCqoFyFFd47o3J1k8i6Jvdlay9U2buLN8/ui2gNtxbxAhFonC
         8mndIY1CKeD5hiIh+dXcj72BORJu+FcINk6P8vq/UA3jRkRtlS468HQ99r1rRixkM9fU
         qWYQ==
X-Forwarded-Encrypted: i=1; AJvYcCVMch3Rv0+mI4b6uXyrEG5BCPhYWfpaFf1wX6kb8Rb7gUY7P/+vjrONj7/a+rGJvySZDXWuFGFQhjhj@vger.kernel.org
X-Gm-Message-State: AOJu0YyclmqAxcxwYCt1j/R8o2duFZbV0sBzA1ZyjLDKiyjUcksBcoIJ
	48eJiMLR/csizCu5+JowhNRk2y4qF4YLAPuqEvIeg7DNSu6NkmJBW3xwXUszy9Yhrn7OWNHtZhh
	Hn7oQ8jANupqS4l5An4MWEPZuWiDyKhJwDYzO+UXk9g==
X-Gm-Gg: ATEYQzwFfbkc+ag0WBtXNSSJSlcK1QklQJGpCPEcOegg41aYiFQtlQ9gb3Soazgchsl
	jrg4X/rBY71C1H4qKAybMGVau7RJMyCla4+J9O2Di91MNx5Fr6aR5XFY9eBFyYiuykly243BpUz
	TMsUQurGZnocNlt0IuPqY+U4vWUUK3WmmQBgUnv420JlXHXAwK3rzoC2XoDuKwjCA+Wi0vXDp2R
	S6JHLbulAGJqqGmQjz2GyY83Dj0t8DTnyKOPB+xD6JuR+e9oCzIs+of8IBcKVIPxHhOotzdfvWK
	SfJd2CsH4w==
X-Received: by 2002:a50:ee17:0:b0:65a:22d5:7b63 with SMTP id
 4fb4d7f45d1cf-65fab6651b6mr4667409a12.0.1772330303825; Sat, 28 Feb 2026
 17:58:23 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <0CA1C3965143B3A7+cover.1772289741.git.lv.zheng@linux.spacemit.com>
In-Reply-To: <0CA1C3965143B3A7+cover.1772289741.git.lv.zheng@linux.spacemit.com>
From: Zong Li <zong.li@sifive.com>
Date: Sun, 1 Mar 2026 09:58:17 +0800
X-Gm-Features: AaiRm52qOWLub30nWjAt6tJggFFKYVIu-tGYIIKePM15Tk_NmHt3UvAlC9ff53s
Message-ID: <CANXhq0o6JELxZETcfdsr2i6Xp6SCbwAxnMdfjXkyGRi2EeWsNA@mail.gmail.com>
Subject: Re: [PATCH v5 0/8] iommu/riscv: Add HPM support for RISC-V IOMMU
To: Lv Zheng <lv.zheng@linux.spacemit.com>
Cc: Tomasz Jeznach <tjeznach@rivosinc.com>, Joerg Roedel <joro@8bytes.org>, 
	Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Namhyung Kim <namhyung@kernel.org>, 
	Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@kernel.org>, 
	Ian Rogers <irogers@google.com>, Adrian Hunter <adrian.hunter@intel.com>, 
	James Clark <james.clark@linaro.org>, Yixun Lan <dlan@kernel.org>, 
	Jingyu Li <joey.li@spacemit.com>, Yaxing Guo <guoyaxing@bosc.ac.cn>, 
	Zhijian Chen <zhijian@spacemit.com>, iommu@lists.linux.dev, 
	linux-perf-users@vger.kernel.org, linux-riscv@lists.infradead.org, 
	spacemit@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Andrew Jones <andrew.jones@oss.qualcomm.com>, 
	Samuel Holland <samuel.holland@sifive.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[sifive.com,reject];
	R_DKIM_ALLOW(-0.20)[sifive.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269657-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[34];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zong.li@sifive.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[sifive.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,infradead.org:url,infradead.org:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: CCC4A1CCB8A
X-Rspamd-Action: no action

On Sat, Feb 28, 2026 at 10:44=E2=80=AFPM Lv Zheng <lv.zheng@linux.spacemit.=
com> wrote:
>
> Includes HPM support for RISC-V IOMMU. The HPM hardware mechanism can be
> found in the recent announced SpacemiT SoCs (K3, V100), where T100
> (SpacemiT distributed IOMMU) is shipped.
>
> The RISC-V IOMMU specification defines optional HPM registers (IOHPMEVT,
> IOHPMCTR, etc.) for performance monitoring of transactions through the
> IOMMU. SpacemiT T100 implements this specification with a distributed
> architecture: the main IOMMU (IOATS) is complemented by up to 64 IOATC
> units that cache IOTLBs adjacent to DMA masters. Each IOATC has its own
> HPM counters and PMIV interrupt.
>
> This series introduces an auxiliary bus framework to allow the HPM
> functionality to be implemented as a separate perf driver, keeping the
> IOMMU core focused on translation. Vendor-specific extensions (SpacemiT
> T100) are layered on top of the generic HPM infrastructure.
>
> History:
> The first revision of this series is posted without the awareness of
> other on-going discussions. There are other postings providing same
> functionality as [PATCH 2-3] in this thread:
> 1. Zong Li:
>    https://lore.kernel.org/all/20250115030306.29735-1-zong.li@sifive.com/
>    We aligned with Zong in the community here:
>    https://lore.kernel.org/all/CANXhq0q8N5eHx9ytabZR97Y7AULKwgS2-uEGhcaOO=
Gp9mvbtRQ@mail.gmail.com/
>    >> Perhaps I can first post my next revision to the mailing list (hope
>    >> it won't waste the community resource), so that you could have a
>    >> chance to review it and see whether that version is architecturally
>    >> closer to what the community is looking for, while also addressing
>    >> your issue. If you also feel that my next revision meets your needs=
,
>    >> perhaps you could append your additional implementations on top of
>    >> it.
>    >> Of course, if the community would prefer to go your version, I'm
>    >> perfectly fine with that as well.
>    His newest version can be found here:
>    https://lore.kernel.org/all/20260208063848.3547817-1-zong.li@sifive.co=
m/

I don=E2=80=99t think this v5 series is appropriate. In the beginning, you
posted a similar implementation without sufficient discussion, but it
might be ok because as you mentioned, you did so because you were not
aware at the time. However, in this v5 series, you have again included
our implementation concept without prior discussion or agreement
(i.e., separates the IOMMU PMU driver into drivers/perf/ through the
auxiliary framework). This may not fully align with the long-standing
open-source collaboration model in the Linux community, In addition,
our v2 series is still waiting for feedback and responses from the
community. I believe it may not be appropriate to directly take our
implementation and include it in your series.
https://lists.infradead.org/pipermail/linux-riscv/2026-February/085349.html

If you would like to build on top of our implementation and add your
own changes, I think a better approach would be to first communicate
with us, and then at least cherry-pick our implementation as the
initial patches (i.e., patch 1 and patch 2). After that, you could
place your own changes starting from the third patch.


> 2. Yaxing Guo:
>    https://lore.kernel.org/all/20250915020911.1313-1-guoyaxing@bosc.ac.cn=
/
>    Yaxing and Zong aligned each other in the community here:
>    https://lore.kernel.org/linux-iommu/2ce9d8be-10b3-48dd-b99e-7358347fc1=
71@bosc.ac.cn/
>    >> Hi Zong Li,
>    >> Of course yes, absolutely - I wasn't aware of your earlier
>    >> submission. Please go ahead with your version.
> This is the newest revision of this patchset, and [PATCH 2-3] is the one
> that is competing with other contributions.
>
> Revisions:
> v1
>  Initial release.
> v2 (sent as v1.1)
>  Split and cleanup DT-bindings.
> v3
>  1. Refactor using vendor specific compatible.
>  2. Implement vendor events with a userspace identifier.
> v4
>  1. Drop ICVEC check which is not that usful as WSI device tree can use
>     only 1 vector for IOATS CIV/FIV/PIV/PMIV.
>  2. Solve DT binding check of "interrupts/maxItems" attribute.
>  3. Address Robin's comments for an old revision sent by "Zong Li".
>  4. Limit IOATC enumeration by referencing spacemit,riscv-iommu.
> v5:
>  1. Use correct style SoC/IP specific compatible.
>  2. Address all on-going comments in other threads.
>  3. Split compatible into SoC specific and IP specific.
>  4. Switch to use auxiliary device framework.
>
> The tested result can be found as follows:
>
>  root@sdfirm:# perf stat --timeout 5000 -a -e spacemit_ioats_hpm_0/dd_wal=
k,config1=3D0x20c0010000000000/ dmatest; sleep 1
>  [  453.426404] dmatest: Started 1 threads using dma0chan0
>  [  453.437152] dmatest: dma0chan0-copy0: summary 1 tests, 0 failures 212=
.04 iops 212 KB/s (0)
>
>   Performance counter stats for 'system wide':
>
>                   3      spacemit_ioats_hpm_0/dd_walk,config1=3D0x20c0010=
000000000/
>
>         0.190412000 seconds time elapsed
>
>  root@sdfirm:~# perf stat --timeout 5000 -a -e spacemit_ioatc_hpm_1/tlb_m=
is,config1=3D0x20c0010000000000/ dmatest; sleep 1
>  [  117.599620] dmatest: Started 1 threads using dma0chan0
>  [  117.610698] dmatest: dma0chan0-copy0: summary 1 tests, 0 failures 186=
.07 iops 186 KB/s (0)
>
>   Performance counter stats for 'system wide':
>
>                   7      spacemit_ioatc_hpm_1/tlb_mis,config1=3D0x20c0010=
000000000/
>
>         0.196982000 seconds time elapsed
>
> Jingyu Li (3):
>   iommu/riscv: Enable IOMMU DMA mapping support
>   iommu/riscv: Add auxiliary bus framework and HPM device support
>   iommu/riscv: Add HPM support for performance monitoring
>
> Lv Zheng (5):
>   dt-bindings: iommu: Add spacemit/t100 features
>   spacemit/t100: Add global filter awareness for RISC-V IOMMU HPM
>   iommu/riscv: Add SpacemiT T100 IOATC HPM support
>   iommu/riscv: Add vendor event support for RISC-V IOMMU HPM
>   perf vendor events riscv: Add SpacemiT T100 HPM event aliases
>
>  .../bindings/iommu/riscv,iommu.yaml           |   58 +-
>  MAINTAINERS                                   |    5 +
>  drivers/iommu/Kconfig                         |    2 +-
>  drivers/iommu/riscv/Kconfig                   |    1 +
>  drivers/iommu/riscv/iommu-bits.h              |   12 +
>  drivers/iommu/riscv/iommu-pci.c               |    8 +-
>  drivers/iommu/riscv/iommu-platform.c          |    7 +-
>  drivers/iommu/riscv/iommu.c                   |  306 +++++
>  drivers/iommu/riscv/iommu.h                   |   25 +-
>  drivers/perf/Kconfig                          |    9 +
>  drivers/perf/Makefile                         |    1 +
>  drivers/perf/riscv_iommu_hpm.c                | 1012 +++++++++++++++++
>  include/linux/riscv_iommu.h                   |   83 ++
>  .../arch/riscv/spacemit/iommu/sys/ioatc.json  |   30 +
>  .../arch/riscv/spacemit/iommu/sys/ioats.json  |  163 +++
>  15 files changed, 1715 insertions(+), 7 deletions(-)
>  create mode 100644 drivers/perf/riscv_iommu_hpm.c
>  create mode 100644 include/linux/riscv_iommu.h
>  create mode 100644 tools/perf/pmu-events/arch/riscv/spacemit/iommu/sys/i=
oatc.json
>  create mode 100644 tools/perf/pmu-events/arch/riscv/spacemit/iommu/sys/i=
oats.json
>
> --
> 2.43.0
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

