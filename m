Return-Path: <devicetree+bounces-116363-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4987A9B2AB1
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 09:47:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CE4631F22564
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 08:47:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 989D2193091;
	Mon, 28 Oct 2024 08:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UKPKOqbc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7854190678
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 08:47:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730105243; cv=none; b=AltiQz//kN5DgEVoMTT5c/bJ4aq5ByP4sJr2UPCye4jmtoIcfhaIofhuU74AR8S58tuayOG/je/hLo4U/cRPH+IbGxdab+AnzM6kkK7owM9GSIRzlGhokE5PqolPPzfeGqA84/xRDmdAdulcaOwYy2+ge46E4emY1v/6DanxdA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730105243; c=relaxed/simple;
	bh=njnWG0K8KmElAsg3GtSVx4MGRnTG4hORKk/QVzoFZPg=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:In-Reply-To; b=WcUmzES6lopXboFjPBK9/Xg9wtRG9pqZ3lvurvfpMMP0L67A3vskoRZJ0DQcrhkxbfPQgD0oIDYVkJvmTIlqUSRVDLs9sWqDVLkFXU8cqfri8awuegwFwwiu/nsWhEWR+0QvqJvIUkwPtoimjPuAgtpWjbp+8lkJKcOPw/HUo7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UKPKOqbc; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-37d4c482844so2692719f8f.0
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 01:47:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730105238; x=1730710038; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=dQpxxEorCaC54I/E/d76w9ruRK2/NSSTmUB/SeU0xA0=;
        b=UKPKOqbc/fgDalQ4tMNscCpk904I2MagViYxOClFJAlhUim4uoFbyCBc2gCNSPTKVn
         kbZv/ZLHQWCCmMcsmUlGWpKM++RzBhVn9X9CTZ+3wxlzbJLrQ47zByMn7QHgBNg7Pdvx
         iHz+5D4dtYWGKJB1/+aJcQs5pz1BcP8r4Tvzfp61s2RuGEtnTMN8xV4o6BNS+jHbG4la
         m1FBWhz6pVE/0bDIJtVL0zncFA4PlNuEJHAsJpNc4Wu7HLivDa6kYxsyahmrWuS0kosz
         qaggKAvHCAvsK90xnrMhPld4Tz3yB+7hmoZk7Tf2/tVV4IJj7psrjZFBfo8MtdpAGkT4
         luDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730105238; x=1730710038;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dQpxxEorCaC54I/E/d76w9ruRK2/NSSTmUB/SeU0xA0=;
        b=b0BAPoAAyHtp94qK9YerrrKFM/hIej73QBbC2KKWVXaYhtB9zYBYGZp6GKPIVB/pwS
         u13oTglHm5+zNwg+h+h6zjBlmVhcubDOJ2DWx1AceuRNSdgVRi+qScYQcKeSCGBhXJ3G
         4ghleVVpcdzQP8fS+Hb09sI4bCL7GFlfQ1Bfe/EjiEddtQBqG65xQfx46/It6KvfwFtV
         jxyjyVRg/qVG6NwdxKo8jkwdKiQdRAMMIH59KYKnTkDqpqbBr1uNkcRuma7dLdWoAMCq
         IKdAXWRQP6fVtklCpVfrXo7Zj6wZSeEY1iYiDVVJN9tI/31xrSoxgIuKmAMnrBVWckJ5
         sWhw==
X-Forwarded-Encrypted: i=1; AJvYcCUjrKlmAYK0UC/H0NeC3oyerDqnhYVjrOT+F7Q2IFepGAq2Mqqr3L8ui6ZrEULC7FfpETcKil2wl9B+@vger.kernel.org
X-Gm-Message-State: AOJu0YxxqOZ3JxQKvmL76zsWDAMBUcf62402yE87OGpWy7MlItgCQkvK
	rxXGdJEpUQZG2YwQ9f+kEdaOyDwoWb2XMJJWuuAkcJNg8ojrRsieS7k1ld8h/kA=
X-Google-Smtp-Source: AGHT+IG2t0dSOV9asrka5oPrm2z358/r92i5q+Ouvdn8AKmm/swXDcwzRiW8ilfEO772hmMSoFc9yA==
X-Received: by 2002:adf:a450:0:b0:37d:4ebe:1644 with SMTP id ffacd0b85a97d-380611e34b4mr4999920f8f.43.1730105237991;
        Mon, 28 Oct 2024 01:47:17 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38058b71231sm8824106f8f.66.2024.10.28.01.47.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Oct 2024 01:47:17 -0700 (PDT)
Date: Mon, 28 Oct 2024 11:47:14 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: oe-kbuild@lists.linux.dev, Christian Marangi <ansuelsmth@gmail.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	"David S. Miller" <davem@davemloft.net>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Antoine Tenart <atenart@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Ingo Molnar <mingo@redhat.com>, Will Deacon <will@kernel.org>,
	Waiman Long <longman@redhat.com>, Boqun Feng <boqun.feng@gmail.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Bill Wendling <morbo@google.com>,
	Justin Stitt <justinstitt@google.com>, linux-crypto@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	llvm@lists.linux.dev, upstream@airoha.com
Cc: lkp@intel.com, oe-kbuild-all@lists.linux.dev, netdev@vger.kernel.org,
	Richard van Schagen <vschagen@icloud.com>
Subject: Re: [PATCH v4 3/3] crypto: Add Mediatek EIP-93 crypto engine support
Message-ID: <8011818d-bdc1-433a-a348-648955c55535@stanley.mountain>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241025094734.1614-3-ansuelsmth@gmail.com>

Hi Christian,

kernel test robot noticed the following build warnings:

https://git-scm.com/docs/git-format-patch#_base_tree_information]

url:    https://github.com/intel-lab-lkp/linux/commits/Christian-Marangi/dt-bindings-crypto-Add-Inside-Secure-SafeXcel-EIP-93-crypto-engine/20241025-175032
base:   https://git.kernel.org/pub/scm/linux/kernel/git/herbert/cryptodev-2.6.git master
patch link:    https://lore.kernel.org/r/20241025094734.1614-3-ansuelsmth%40gmail.com
patch subject: [PATCH v4 3/3] crypto: Add Mediatek EIP-93 crypto engine support
config: csky-randconfig-r071-20241028 (https://download.01.org/0day-ci/archive/20241028/202410281155.jEN0wSbS-lkp@intel.com/config)
compiler: csky-linux-gcc (GCC) 14.1.0

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
| Closes: https://lore.kernel.org/r/202410281155.jEN0wSbS-lkp@intel.com/

New smatch warnings:
drivers/crypto/inside-secure/eip93/eip93-cipher.c:118 eip93_skcipher_setkey() error: uninitialized symbol 'ret'.
drivers/crypto/inside-secure/eip93/eip93-aead.c:125 eip93_aead_setkey() error: uninitialized symbol 'ret'.
drivers/crypto/inside-secure/eip93/eip93-hash.c:26 eip93_hash_free_data_blocks() error: dereferencing freed memory 'block'
drivers/crypto/inside-secure/eip93/eip93-hash.c:162 _eip93_hash_init() error: uninitialized symbol 'sa_record_hmac'.

Old smatch warnings:
drivers/crypto/inside-secure/eip93/eip93-hash.c:285 eip93_send_hash_req() error: uninitialized symbol 'crypto_async_idr'.

vim +/ret +118 drivers/crypto/inside-secure/eip93/eip93-cipher.c

883ad7684f17d2 Christian Marangi 2024-10-25   78  static int eip93_skcipher_setkey(struct crypto_skcipher *ctfm, const u8 *key,
883ad7684f17d2 Christian Marangi 2024-10-25   79  				 unsigned int len)
883ad7684f17d2 Christian Marangi 2024-10-25   80  {
883ad7684f17d2 Christian Marangi 2024-10-25   81  	struct crypto_tfm *tfm = crypto_skcipher_tfm(ctfm);
883ad7684f17d2 Christian Marangi 2024-10-25   82  	struct eip93_crypto_ctx *ctx = crypto_tfm_ctx(tfm);
883ad7684f17d2 Christian Marangi 2024-10-25   83  	struct eip93_alg_template *tmpl = container_of(tfm->__crt_alg,
883ad7684f17d2 Christian Marangi 2024-10-25   84  						     struct eip93_alg_template,
883ad7684f17d2 Christian Marangi 2024-10-25   85  						     alg.skcipher.base);
883ad7684f17d2 Christian Marangi 2024-10-25   86  	struct sa_record *sa_record = ctx->sa_record;
883ad7684f17d2 Christian Marangi 2024-10-25   87  	unsigned int keylen = len;
883ad7684f17d2 Christian Marangi 2024-10-25   88  	u32 flags = tmpl->flags;
883ad7684f17d2 Christian Marangi 2024-10-25   89  	u32 nonce = 0;
883ad7684f17d2 Christian Marangi 2024-10-25   90  	int ret;
883ad7684f17d2 Christian Marangi 2024-10-25   91  
883ad7684f17d2 Christian Marangi 2024-10-25   92  	if (!key || !keylen)
883ad7684f17d2 Christian Marangi 2024-10-25   93  		return -EINVAL;
883ad7684f17d2 Christian Marangi 2024-10-25   94  
883ad7684f17d2 Christian Marangi 2024-10-25   95  	if (IS_RFC3686(flags)) {
883ad7684f17d2 Christian Marangi 2024-10-25   96  		if (len < CTR_RFC3686_NONCE_SIZE)
883ad7684f17d2 Christian Marangi 2024-10-25   97  			return -EINVAL;
883ad7684f17d2 Christian Marangi 2024-10-25   98  
883ad7684f17d2 Christian Marangi 2024-10-25   99  		keylen = len - CTR_RFC3686_NONCE_SIZE;
883ad7684f17d2 Christian Marangi 2024-10-25  100  		memcpy(&nonce, key + keylen, CTR_RFC3686_NONCE_SIZE);
883ad7684f17d2 Christian Marangi 2024-10-25  101  	}
883ad7684f17d2 Christian Marangi 2024-10-25  102  
883ad7684f17d2 Christian Marangi 2024-10-25  103  	if (flags & EIP93_ALG_DES) {
883ad7684f17d2 Christian Marangi 2024-10-25  104  		ctx->blksize = DES_BLOCK_SIZE;
883ad7684f17d2 Christian Marangi 2024-10-25  105  		ret = verify_skcipher_des_key(ctfm, key);
883ad7684f17d2 Christian Marangi 2024-10-25  106  	}
883ad7684f17d2 Christian Marangi 2024-10-25  107  	if (flags & EIP93_ALG_3DES) {
883ad7684f17d2 Christian Marangi 2024-10-25  108  		ctx->blksize = DES3_EDE_BLOCK_SIZE;
883ad7684f17d2 Christian Marangi 2024-10-25  109  		ret = verify_skcipher_des3_key(ctfm, key);
883ad7684f17d2 Christian Marangi 2024-10-25  110  	}
883ad7684f17d2 Christian Marangi 2024-10-25  111  
883ad7684f17d2 Christian Marangi 2024-10-25  112  	if (flags & EIP93_ALG_AES) {
883ad7684f17d2 Christian Marangi 2024-10-25  113  		struct crypto_aes_ctx aes;
883ad7684f17d2 Christian Marangi 2024-10-25  114  
883ad7684f17d2 Christian Marangi 2024-10-25  115  		ctx->blksize = AES_BLOCK_SIZE;
883ad7684f17d2 Christian Marangi 2024-10-25  116  		ret = aes_expandkey(&aes, key, keylen);
883ad7684f17d2 Christian Marangi 2024-10-25  117  	}

What about if none the flags are set?

883ad7684f17d2 Christian Marangi 2024-10-25 @118  	if (ret)
883ad7684f17d2 Christian Marangi 2024-10-25  119  		return ret;
883ad7684f17d2 Christian Marangi 2024-10-25  120  
883ad7684f17d2 Christian Marangi 2024-10-25  121  	eip93_set_sa_record(sa_record, keylen, flags);
883ad7684f17d2 Christian Marangi 2024-10-25  122  
883ad7684f17d2 Christian Marangi 2024-10-25  123  	memcpy(sa_record->sa_key, key, keylen);
883ad7684f17d2 Christian Marangi 2024-10-25  124  	ctx->sa_nonce = nonce;
883ad7684f17d2 Christian Marangi 2024-10-25  125  	sa_record->sa_nonce = nonce;
883ad7684f17d2 Christian Marangi 2024-10-25  126  
883ad7684f17d2 Christian Marangi 2024-10-25  127  	return 0;
883ad7684f17d2 Christian Marangi 2024-10-25  128  }

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki


