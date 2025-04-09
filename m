Return-Path: <devicetree+bounces-164821-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B62DA827C7
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 16:26:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 822B67B1CCF
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 14:25:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59F1D265CC8;
	Wed,  9 Apr 2025 14:26:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="umQqvzTV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F1A9264637
	for <devicetree@vger.kernel.org>; Wed,  9 Apr 2025 14:26:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744208778; cv=none; b=OhyOrpX4rEfHwyBgyfGBGk4p929ENeuqMJhTzVbkWL7BW4CKRx51YFI+r9SbHvppvSEHNVsuVAMX6f5vMbeICNdSHkfdtRKpYmAsGxUBMV+nNdDEHZJJqUJRTZPrs+Tc3LksFwCTy/55ZciVvBhYpzGChSXxEXxUa6LGwMSuHu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744208778; c=relaxed/simple;
	bh=XzrQ0mp7WLZBCaR1QiDf7RGSn7Hx8B/2cG3auHEmO9A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VLxnlJlzapHBwgVmOP1Io6FH1i6nY4ufLquGKNKsA6DG3a2co98kp1jq2TfrBENXQDilP6q1qVR9hvLF2F4ErRySHZ2xiRsQS+90Ds8Dl1iX4rM0JQRVK0IseY4spyrM9g3pMfFnRwasUs6TI+1WFsv7HQLXSl+x9xpzm2kq2TY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=umQqvzTV; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-7399a2dc13fso9172883b3a.2
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 07:26:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1744208774; x=1744813574; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=VWCFSwSJdWVyuiq1FZlofUemWkrK3y3F0Kcxx42yGpc=;
        b=umQqvzTVILzhPynzAwi5LSrvh4hAJ6dAjyd8WMlFATXucc4vGYSGANwv1sIoGsv9Ag
         QxpMMWyRhT1lbu7asOtH7joFr8NY0vj0RGMAWyNztZMKNdY3sSLYSaz/JFGFY6UYG+vo
         6G4tZadO83UvhefAdvC+nDbItDx9Uv0NQx6rqOxvAxuTWUHaBuz0/JdQet30IEpFqqh7
         HrLAbiCLj+nJHnoYaTGkwdM5DedcPbDHsEhXNZslw7gpU64Y9LinYhCQz1+VkIlXBkpn
         DPQNEoVV/yts7C3SPaJYmHRvuFjaTWKRR/zPcvTTniYNkdiMGtFTwQkg+xHpf9RdXHC8
         2L9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744208774; x=1744813574;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VWCFSwSJdWVyuiq1FZlofUemWkrK3y3F0Kcxx42yGpc=;
        b=bL2+H3Fa0sNloY2C0DuAqUiIKwOkxkR203aQCYX/oWUv8O+nhBW8PpVxYNSRzRLJDR
         nWanO3rOQgWLFdmwWE5yAOExmkCmhLnAo+J5mAV3edsif7PlL2Q0n/J15XjH2PAX8AvU
         5tFMrZKJzKn6WZlUTelLlEXSZg9xckTOKFaK+kfm6sFDZIhXzeXfg1Ev7b3XE2I1I4G3
         jDonkWlYn3FgYVH+0Keu/cl/JaFhDLsuJme5s1AEVnKmphqrN7mNdLIf8B9lCTO/2Dt/
         DMCmzE1yt4uyRvb+MEYR57J8ZZiwB+5WgJBaUnFMVfmLpv0Gc6FLl3sy9UqSjjy56rkb
         /KCg==
X-Forwarded-Encrypted: i=1; AJvYcCV6Vv4c6fHr/faxy1UJtmxSnQ8xEfFhD+Nu2GVZKvJP1zkH+bXuPyMy32UivSsxmID554Hn+DME5sCA@vger.kernel.org
X-Gm-Message-State: AOJu0YzWZ3e81PrxcpGo8kY0lKOyEIcYS3kymBJA5z7QLfeVf2ptPiWH
	npVqPeihmt4Du2UaW+FKqSrldVhkiJRfsM6jeB0hdYwoU+LY5Zlm5FPFbwASiZg=
X-Gm-Gg: ASbGncu7faAoHh+KvJ+31KTIhVZmhTnhnwnAdOydvkCzcAvovqSDk+Z58LhsgYRuq+9
	SYUFbGlG5vlzMIyedhJ5gre/9q9zMbge/UImg4vjZKrc8eNXC3qlFfQcL+c6S7OEy2fNgumm1hL
	gWFVqSl3cmqgtAiEbSwuoUYiKA0kZnh8aiKF6f2yUjmLiw4eSN7Lu4CAfQWtaLzbdUdZdV52KN7
	5f+3Xzx5Tb+uUhIp3XaCZBRqUD3XSLgNzAp49PK8HmV9U1pDROqk0tXdyjl9tZ4PdAIXPoFhR82
	H0kx2TV9ZpeABuneIWkhZEwTbuu5M9AFTNaDVDGW7n/WQ0ah4uk=
X-Google-Smtp-Source: AGHT+IHFFMUtgc5GdaqhKowOEcwpQuVaNNQv/0+QvYg71I8MlHsNAHS1sjVjRx/1bLRC7yOHjj+PuA==
X-Received: by 2002:a05:6a00:e12:b0:736:a973:748 with SMTP id d2e1a72fcca58-73bafd6a4a1mr3511930b3a.22.1744208774241;
        Wed, 09 Apr 2025 07:26:14 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73bb1d2b108sm1426136b3a.19.2025.04.09.07.26.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 07:26:13 -0700 (PDT)
Date: Wed, 9 Apr 2025 07:26:10 -0700
From: Deepak Gupta <debug@rivosinc.com>
To: Alexandre Ghiti <alex@ghiti.fr>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	Dave Hansen <dave.hansen@linux.intel.com>, x86@kernel.org,
	"H. Peter Anvin" <hpa@zytor.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	"Liam R. Howlett" <Liam.Howlett@oracle.com>,
	Vlastimil Babka <vbabka@suse.cz>,
	Lorenzo Stoakes <lorenzo.stoakes@oracle.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Christian Brauner <brauner@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Oleg Nesterov <oleg@redhat.com>,
	Eric Biederman <ebiederm@xmission.com>, Kees Cook <kees@kernel.org>,
	Jonathan Corbet <corbet@lwn.net>, Shuah Khan <shuah@kernel.org>,
	Jann Horn <jannh@google.com>, Conor Dooley <conor+dt@kernel.org>,
	linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
	linux-mm@kvack.org, linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org, linux-arch@vger.kernel.org,
	linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org,
	alistair.francis@wdc.com, richard.henderson@linaro.org,
	jim.shu@sifive.com, andybnac@gmail.com, kito.cheng@sifive.com,
	charlie@rivosinc.com, atishp@rivosinc.com, evan@rivosinc.com,
	cleger@rivosinc.com, alexghiti@rivosinc.com,
	samitolvanen@google.com, broonie@kernel.org,
	rick.p.edgecombe@intel.com
Subject: Re: [PATCH v12 13/28] prctl: arch-agnostic prctl for indirect branch
 tracking
Message-ID: <Z_aDgnfI3_LKHdfb@debug.ba.rivosinc.com>
References: <20250314-v5_user_cfi_series-v12-0-e51202b53138@rivosinc.com>
 <20250314-v5_user_cfi_series-v12-13-e51202b53138@rivosinc.com>
 <fdf8f812-ae36-4327-b345-2df047b85e7a@ghiti.fr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <fdf8f812-ae36-4327-b345-2df047b85e7a@ghiti.fr>

On Wed, Apr 09, 2025 at 10:03:05AM +0200, Alexandre Ghiti wrote:
>On 14/03/2025 22:39, Deepak Gupta wrote:
>>Three architectures (x86, aarch64, riscv) have support for indirect branch
>>tracking feature in a very similar fashion. On a very high level, indirect
>>branch tracking is a CPU feature where CPU tracks branches which uses
>>memory operand to perform control transfer in program. As part of this
>>tracking on indirect branches, CPU goes in a state where it expects a
>>landing pad instr on target and if not found then CPU raises some fault
>>(architecture dependent)
>>
>>x86 landing pad instr - `ENDBRANCH`
>>arch64 landing pad instr - `BTI`
>>riscv landing instr - `lpad`
>>
>>Given that three major arches have support for indirect branch tracking,
>>This patch makes `prctl` for indirect branch tracking arch agnostic.
>>
>>To allow userspace to enable this feature for itself, following prtcls are
>>defined:
>>  - PR_GET_INDIR_BR_LP_STATUS: Gets current configured status for indirect
>>    branch tracking.
>>  - PR_SET_INDIR_BR_LP_STATUS: Sets a configuration for indirect branch
>>    tracking.
>>    Following status options are allowed
>>        - PR_INDIR_BR_LP_ENABLE: Enables indirect branch tracking on user
>>          thread.
>>        - PR_INDIR_BR_LP_DISABLE; Disables indirect branch tracking on user
>>          thread.
>>  - PR_LOCK_INDIR_BR_LP_STATUS: Locks configured status for indirect branch
>>    tracking for user thread.
>>
>>Signed-off-by: Deepak Gupta <debug@rivosinc.com>
>>Reviewed-by: Mark Brown <broonie@kernel.org>
>>---
>>  include/linux/cpu.h        |  4 ++++
>>  include/uapi/linux/prctl.h | 27 +++++++++++++++++++++++++++
>>  kernel/sys.c               | 30 ++++++++++++++++++++++++++++++
>>  3 files changed, 61 insertions(+)
>>
>>diff --git a/include/linux/cpu.h b/include/linux/cpu.h
>>index 6a0a8f1c7c90..fb0c394430c6 100644
>>--- a/include/linux/cpu.h
>>+++ b/include/linux/cpu.h
>>@@ -204,4 +204,8 @@ static inline bool cpu_mitigations_auto_nosmt(void)
>>  }
>>  #endif
>>+int arch_get_indir_br_lp_status(struct task_struct *t, unsigned long __user *status);
>>+int arch_set_indir_br_lp_status(struct task_struct *t, unsigned long status);
>>+int arch_lock_indir_br_lp_status(struct task_struct *t, unsigned long status);
>>+
>>  #endif /* _LINUX_CPU_H_ */
>>diff --git a/include/uapi/linux/prctl.h b/include/uapi/linux/prctl.h
>>index 5c6080680cb2..6cd90460cbad 100644
>>--- a/include/uapi/linux/prctl.h
>>+++ b/include/uapi/linux/prctl.h
>>@@ -353,4 +353,31 @@ struct prctl_mm_map {
>>   */
>>  #define PR_LOCK_SHADOW_STACK_STATUS      76
>>+/*
>>+ * Get the current indirect branch tracking configuration for the current
>>+ * thread, this will be the value configured via PR_SET_INDIR_BR_LP_STATUS.
>>+ */
>>+#define PR_GET_INDIR_BR_LP_STATUS      77
>>+
>>+/*
>>+ * Set the indirect branch tracking configuration. PR_INDIR_BR_LP_ENABLE will
>>+ * enable cpu feature for user thread, to track all indirect branches and ensure
>>+ * they land on arch defined landing pad instruction.
>>+ * x86 - If enabled, an indirect branch must land on `ENDBRANCH` instruction.
>>+ * arch64 - If enabled, an indirect branch must land on `BTI` instruction.
>>+ * riscv - If enabled, an indirect branch must land on `lpad` instruction.
>>+ * PR_INDIR_BR_LP_DISABLE will disable feature for user thread and indirect
>>+ * branches will no more be tracked by cpu to land on arch defined landing pad
>>+ * instruction.
>>+ */
>>+#define PR_SET_INDIR_BR_LP_STATUS      78
>>+# define PR_INDIR_BR_LP_ENABLE		   (1UL << 0)
>
>
>Are we missing PR_INDIR_BR_LP_DISABLE definition here?

PR_SET_INDIR_BR_LP_STATUS with parameter's bit0 clear will disable branch tracking.
This is what arm and riscv settled on for shadow stack enable and disable as well.
>
>
>>+
>>+/*
>>+ * Prevent further changes to the specified indirect branch tracking
>>+ * configuration.  All bits may be locked via this call, including
>>+ * undefined bits.
>>+ */
>>+#define PR_LOCK_INDIR_BR_LP_STATUS      79
>>+
>>  #endif /* _LINUX_PRCTL_H */
>>diff --git a/kernel/sys.c b/kernel/sys.c
>>index cb366ff8703a..f347f3518d0b 100644
>>--- a/kernel/sys.c
>>+++ b/kernel/sys.c
>>@@ -2336,6 +2336,21 @@ int __weak arch_lock_shadow_stack_status(struct task_struct *t, unsigned long st
>>  	return -EINVAL;
>>  }
>>+int __weak arch_get_indir_br_lp_status(struct task_struct *t, unsigned long __user *status)
>>+{
>>+	return -EINVAL;
>>+}
>>+
>>+int __weak arch_set_indir_br_lp_status(struct task_struct *t, unsigned long status)
>>+{
>>+	return -EINVAL;
>>+}
>>+
>>+int __weak arch_lock_indir_br_lp_status(struct task_struct *t, unsigned long status)
>>+{
>>+	return -EINVAL;
>>+}
>>+
>>  #define PR_IO_FLUSHER (PF_MEMALLOC_NOIO | PF_LOCAL_THROTTLE)
>>  #ifdef CONFIG_ANON_VMA_NAME
>>@@ -2811,6 +2826,21 @@ SYSCALL_DEFINE5(prctl, int, option, unsigned long, arg2, unsigned long, arg3,
>>  			return -EINVAL;
>>  		error = arch_lock_shadow_stack_status(me, arg2);
>>  		break;
>>+	case PR_GET_INDIR_BR_LP_STATUS:
>>+		if (arg3 || arg4 || arg5)
>>+			return -EINVAL;
>>+		error = arch_get_indir_br_lp_status(me, (unsigned long __user *)arg2);
>>+		break;
>>+	case PR_SET_INDIR_BR_LP_STATUS:
>>+		if (arg3 || arg4 || arg5)
>>+			return -EINVAL;
>>+		error = arch_set_indir_br_lp_status(me, arg2);
>>+		break;
>>+	case PR_LOCK_INDIR_BR_LP_STATUS:
>>+		if (arg3 || arg4 || arg5)
>>+			return -EINVAL;
>>+		error = arch_lock_indir_br_lp_status(me, arg2);
>>+		break;
>>  	default:
>>  		trace_task_prctl_unknown(option, arg2, arg3, arg4, arg5);
>>  		error = -EINVAL;
>>

