Return-Path: <devicetree+bounces-248724-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 601F7CD5465
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 10:15:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D3BD7300F595
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 09:15:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C23C63101B2;
	Mon, 22 Dec 2025 09:15:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kL9F0oe2";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Zn5Tu/CE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BC0830FC2E
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 09:15:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766394931; cv=none; b=Ox50QzovHt0/IvDOTao9maVe39Hq/GyLzMXEpnAWxKJbEVsqR4FNQkCRlUoqa9G1huq8707jOfGt1XGRJji1yhKLou76XNSoPMX3Qss2gzQiKfT594IS6wMRDYqKSGyiOT73NxXe8n4ZqopWlwzjzNHk+aHK80HkCNc6N3aijME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766394931; c=relaxed/simple;
	bh=09SPlJS8w9z55KV9fRGuGfrJpZXnHXqZaP8GsPWBy9E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pfKoD8Ap+qxFfsLvv2VCnaS3IiXN2i/2mEPtoLzX+oo5ZBkyu+0hqpuFMNNL8FF3b5N91MglIQVqPfUYfB0KyH+oPy9dB+nlGoIDApviBE37QWNGtgZBELRAwlWyqyL7nmzyQGzUJMmSI5nwdHPBxu2gqwzZzXkaeWJfAI1xBkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kL9F0oe2; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Zn5Tu/CE; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BM8DUd6101413
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 09:15:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=tXclW4aX46rZnRIVsSHqBVnw
	Bj3pv8YCsnr1Ohovb0I=; b=kL9F0oe2hqbeC+xizDU5G3NSG2MS/+zfoL4R9kb0
	rI271HGOxxb56+ca6cHU3iAF+/Pg3+pl2PgVRQ/FsXZWQDUTX6p0SDvqF5yq+pWy
	kyPjBJhtpzJz6ob1CJJf5bF4m5mIGkdplJ7Ibn/LEKLzAdQHgzHVuE+3XXOo0iHf
	Lfzp9mEYSNNM54SYeM9F4aoWYtlzs8wYpuqflpMCREnNCp4/dbnK+aUeaF7MJTEp
	5bZeJFvgDVX79iB1Ne6zbK2uEAbRDTNQ63M5FHoEZw80nXAjCTrBEmQzBKXbzTPy
	vy4A2KKOV6SU6pcGsVTm0x9fOi2BzX9d2oxgzdvf+yDKbA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b5mracehu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 09:15:29 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ed782d4c7dso65016051cf.2
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 01:15:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766394929; x=1766999729; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=tXclW4aX46rZnRIVsSHqBVnwBj3pv8YCsnr1Ohovb0I=;
        b=Zn5Tu/CEwkUJ7u434HpEgicfsonscGJFY+PtKNv85iMTFBCptBiKrIBUfOmTBu2hj5
         MdFCk34nCi2qeJJt7fMfHGRYXesj5dGtZJrl4Kd6KTGmMku37c4IWPBlCF3ZAiBO4ZWp
         9xSeguDEfLUWhkiI/l3VPV08HMB0oEsF1s2vWapJMZvmNlYSrYPj9Q/oE3vS8+1x+o8U
         zR3QARzFJN3gc9GApFC9F8oZHlEaHEnX+ISQjiFrHRD7Gsah+LIMlzU4xSb/m5APMRgR
         T9tMjVthPzV7n7Grh9YHxGZ64ivg8GbhE+3HMWgqXEbGCjtW4Kc21xZ6y2LJUHtgTXI1
         JA/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766394929; x=1766999729;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tXclW4aX46rZnRIVsSHqBVnwBj3pv8YCsnr1Ohovb0I=;
        b=G7PdSzC5FOmRykpBANm2ehVY9Cb59rXcahDrIJO9FsWi7982mT55U0BPgn/Vn0BrF6
         i/5YDqxAI9ostQ5dBtMjwETmexCOQqo400OHrh+Q0N8dZjg/2WV0bhGc1xubeWAsAo5n
         foCDNQ+9plCRj0sCf+Bepb/yZcv89YivQxBRKmPlPNP2+04GuPKz4Y3ALrehNS9ysvsM
         UoCtPwaS2iWN6vUw2DFDtv3M2Ep0p9PUFlKJip8APLyNAHKhlkg0KspJ12ueVOEWEYH7
         Bx1Pk1ayPA3TbepS36GrnQhL51j0pwgvq86GyBhn7wO3l9O/8uAhPBlZOzh3YYVLpkwc
         mn4A==
X-Forwarded-Encrypted: i=1; AJvYcCU8zZLIyzy74iu9YJmA9GzoIAqPB2wy88paY1Ie0+b5pZjEej4MXOBw/KQ9HBCisauUcLNMKcMKYZhU@vger.kernel.org
X-Gm-Message-State: AOJu0YzkPWAuu0AZZV5f8BcRHD6HY5ZYhLgNNSQFEv3f/u2HdvrE7fph
	0k9oQpoG9RhXP3ixfhlETo3i6i1ZUhKg9jqHl7ILOxWMb0yQV3p4fq/BK9Ba5TQ4DgZOSUCf/Kf
	mi/X5RZMpr38JJ/vfgUe+ogMKJQcIfxMkqOHbNnfnUWkLW9eq4ZtKHdPTfvCvXfN8
X-Gm-Gg: AY/fxX45xF3sbmB5sw19WtxCyrCfchns/eow/Lx/F4d0qNKkfGH3yL2mOCo7x7nxjji
	YSLEUmSuBBTyP5jI53B/jEj2UcGJvsYUhEhZ3kMyshvZk0pgXMiVu3EEulYisBkex+uhhOIt8k7
	jbMBqRVgRVbCDaNxpSoy6ATf2sAZ35J6Hi84nFe2uZbh8lqgEplpbOz3iXWNUsJ8aKGXKU7Y1yA
	6obbb4Z86nOYmJ/2xBES1qIolWZMQtFHFhQLhT/1CAJ2qi/4pD2kBDvnEe+PESJwN1eWwtk3tEY
	MH2Wj09i2fTuG6jTZoB5jOM3UmzjPiUsD7o6cleRWRL83DroTJklekdTPUYLDMEOYEP3kZPC+s1
	/sAxTmHvdB+Lf9OgpWExilg==
X-Received: by 2002:a05:622a:4a84:b0:4ee:2459:3d6c with SMTP id d75a77b69052e-4f4abdb5dadmr144189041cf.58.1766394928447;
        Mon, 22 Dec 2025 01:15:28 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHI3mUaLRUI/hNRVJZgifamB6jpBWNmC9mZeJbuHbHKFqMDYETI58XYsek/jvDDSeq8cxoolQ==
X-Received: by 2002:a05:622a:4a84:b0:4ee:2459:3d6c with SMTP id d75a77b69052e-4f4abdb5dadmr144188691cf.58.1766394927938;
        Mon, 22 Dec 2025 01:15:27 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037a5c4dfsm1029081466b.14.2025.12.22.01.15.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Dec 2025 01:15:27 -0800 (PST)
Date: Mon, 22 Dec 2025 11:15:25 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, Pengyu Luo <mitltlatltl@gmail.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/3] phy: qualcomm: phy-qcom-eusb2-repeater: Add
 squelch detect param update
Message-ID: <gtagaq7a74nolj5sebulkfeimbiqto5mim4wara7hlupstjk7k@jb74w2t4pesm>
References: <20251219173108.2119296-1-krishna.kurapati@oss.qualcomm.com>
 <20251219173108.2119296-3-krishna.kurapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251219173108.2119296-3-krishna.kurapati@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: wIFcT4MhWhM_XQ8TO58uDy5rgCgNG3nQ
X-Proofpoint-GUID: wIFcT4MhWhM_XQ8TO58uDy5rgCgNG3nQ
X-Authority-Analysis: v=2.4 cv=e9wLiKp/ c=1 sm=1 tr=0 ts=69490c31 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=kj9zAlcOel0A:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=yu3_NAM81_lDL6LZg7cA:9
 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIyMDA4MyBTYWx0ZWRfX96hLYGLb7fWA
 gD/uxNirBx7YB9FBltB8rrOaKb3eRcx9QybZd9fsaAZUKMeYFvVZTfN+pxXajI9LEeOWhBTFqZQ
 rpdBN49enlp3w+m+uglj1MroIjzOAEF2sFSspKlCN9hnTlZe1WoZ7aZeUbKvpp0KFGrPB2UyaZW
 Qz19Y+AIXoZuePXngk9vaY8Fg6gj5V7TZDMOEtf8nOwQviES6DppmDXzmm/VO2e0+Z5Nci1YOY2
 NoML3cdjRkCGyqDcGsvlNM6feBmrTZ7YsK0AKDGH0sU6OHPD/v0iBuR9DcxstMHrwOzQ9MXZrP6
 JE7jPOK11as9RvczqcpIejc9SUykyPsY+QaEEqy6I3nbMGkHCFeye0nvRRSCw9NLrUJ9EzGJksH
 vQvocLVbZMiXx+T8+d+wgB4YPLWmCC+b7edP1cxwXj88rt/N+iBTGQvkde2H0l14qgZKCy5GatE
 I/b3I10QovSHJ5x+6vg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-21_05,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 impostorscore=0 clxscore=1015 phishscore=0
 adultscore=0 spamscore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512220083

On 25-12-19 23:01:07, Krishna Kurapati wrote:
> Add support for overriding Squelch Detect parameter.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

